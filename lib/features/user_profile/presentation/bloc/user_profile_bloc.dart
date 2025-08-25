import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/get_user_profile/get_user_profile_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/update_user_profile/update_user_profile_usecase.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'user_profile_event.dart';
import 'user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final AuthBloc _authBloc;
  final GetUserProfileUsecase _getUserProfileUsecase;
  final UpdateUserProfileUsecase _updateUserProfileUsecase;
  UserProfileBloc({
    required UserRepository userRepository,
    required AuthBloc authBloc,
  }) : _authBloc = authBloc,
       _getUserProfileUsecase = GetUserProfileUsecase(userRepository),
       _updateUserProfileUsecase = UpdateUserProfileUsecase(userRepository),
       super(UserProfileState.initial()) {
    on<UserProfileEventLoadUserProfile>(_onLoadUserProfile);
    on<UserProfileEventUpdateUserProfile>(_onUpdateUserProfile);
  }

  void _onLoadUserProfile(
    UserProfileEventLoadUserProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(UserProfileState.loading());
    final userData = _authBloc.userData;
    if (userData != null) {
      final result = await _getUserProfileUsecase.call(userData.userID);
      await Future.delayed(Duration(milliseconds: 250));
      result.when(
        success: (value) {
          emit(UserProfileState.success(data: value));
        },
        failed: (message) => emit(UserProfileState.failed(message: message)),
      );
    } else {
      emit(UserProfileState.failed(message: "No user logged in"));
    }
  }

  void _onUpdateUserProfile(
    UserProfileEventUpdateUserProfile event,
    Emitter<UserProfileState> emit,
  ) async {
    final currentState = state;
    emit(UserProfileState.loading());

    final userData = _authBloc.userData;
    if (userData == null) {
      emit(UserProfileState.failed(message: "No user logged in"));
      return;
    }

    final result = await _updateUserProfileUsecase.call(event.param);

    await Future.delayed(const Duration(milliseconds: 250));

    result.when(
      success: (value) {
        _authBloc.add(AuthEvent.updateUserState(data: value.user));
        emit(UserProfileState.successUpdate(data: value.profile));
      },
      failed: (message) {
        if (currentState is UserProfileStateSuccess) {
          emit(
            UserProfileState.failed(
              message: message,
              previousData: currentState.data,
            ),
          );
        } else if (currentState is UserProfileStateSuccessUpdate) {
          emit(
            UserProfileState.failed(
              message: message,
              previousData: currentState.data,
            ),
          );
        } else {
          emit(UserProfileState.failed(message: message));
        }
      },
    );
  }
}
