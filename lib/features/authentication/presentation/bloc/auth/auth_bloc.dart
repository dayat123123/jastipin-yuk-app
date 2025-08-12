import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_data.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/basic_login/basic_login_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/firebase_login/firebase_login_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/get_firebase_user_data/get_firebase_user_data_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/local_login/local_login_usecase.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/logout/logout_usecase.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_event.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_state.dart';

export 'auth_event.dart';
export 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final BasicLoginUsecase _basicLoginUsecase;
  final LogoutUsecase _logoutUsecase;
  final FirebaseLoginUseCase _firebaseLoginUseCase;
  final GetFirebaseUserDataUsecase _getFirebaseUserDataUsecase;
  final LocalLoginUsecase _localLoginUsecase;

  AuthBloc({required AuthenticationRepository authRepository})
    : _basicLoginUsecase = BasicLoginUsecase(authRepository),
      _logoutUsecase = LogoutUsecase(authRepository),
      _getFirebaseUserDataUsecase = GetFirebaseUserDataUsecase(authRepository),
      _firebaseLoginUseCase = FirebaseLoginUseCase(authRepository),
      _localLoginUsecase = LocalLoginUsecase(authRepository),
      super(const AuthState.initial()) {
    on<AuthEventLogin>(_onLogin);
    on<AuthEventLocalLogin>(_onLocalLogin);
    on<AuthEventLogout>(_onLogout);
    on<AuthEventFirebaseLogin>(_onFirebaseLogin);
    on<AuthEventUpdateUserState>(_onUpdateUserState);
  }

  void _onLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _basicLoginUsecase.call(event.param);
    result.when(
      success: (value) {
        emit(AuthState.authenticated(userData: value));
      },
      failed: (message) {
        emit(AuthState.failed(message: message));
      },
    );
  }

  void _onLocalLogin(AuthEventLocalLogin event, Emitter<AuthState> emit) async {
    final result = await _localLoginUsecase.call(null);
    result.when(
      success: (value) => emit(AuthState.authenticated(userData: value)),
      failed: (message) => emit(AuthState.initial()),
    );
  }

  void _onFirebaseLogin(
    AuthEventFirebaseLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final signInResult = await _getFirebaseUserDataUsecase.call(null);

    if (signInResult.isFailed) {
      emit(AuthState.failed(message: signInResult.errorMessage ?? ""));
      return;
    }

    final idToken = signInResult.resultValue?.idToken;

    if (idToken == null || idToken.isEmpty) {
      emit(AuthState.failed(message: "Invalid IdToken from Firebase"));
      return;
    }

    final loginResult = await _firebaseLoginUseCase.call(idToken);

    loginResult.when(
      success: (userData) => emit(AuthState.authenticated(userData: userData)),
      failed: (message) => emit(AuthState.failed(message: message)),
    );
  }

  void _onLogout(AuthEventLogout event, Emitter<AuthState> emit) async {
    final currentState = state;
    emit(AuthState.loading());
    if (currentState is Authenticated) {
      final userData = currentState.userData;
      await _logoutUsecase.call(userData.userID).timeout(Duration(seconds: 2));
    }
    emit(AuthState.unauthenticated());
  }

  void _onUpdateUserState(
    AuthEventUpdateUserState event,
    Emitter<AuthState> emit,
  ) {
    if (state is Authenticated) {
      emit((state as Authenticated).copyWith(userData: event.data));
    }
  }

  UserData? get userData => state.maybeWhen(
    authenticated: (userData) => userData,
    orElse: () => null,
  );
}
