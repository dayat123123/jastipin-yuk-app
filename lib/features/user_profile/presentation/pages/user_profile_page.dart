import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/features/authentication/domain/entities/user_profile.dart';
import 'package:jastipin_yuk/features/authentication/domain/enums/gender.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/usecases/update_user_profile/update_user_profile_param.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/user_profile/presentation/bloc/user_profile_bloc.dart';
import 'package:jastipin_yuk/features/user_profile/presentation/bloc/user_profile_event.dart';
import 'package:jastipin_yuk/features/user_profile/presentation/bloc/user_profile_state.dart';
import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/extensions/string_extension.dart';
import 'package:jastipin_yuk/shared/extensions/text_editing_controller_extension.dart';
import 'package:jastipin_yuk/shared/misc/global_variables.dart';
import 'package:jastipin_yuk/shared/widgets/avatar/profile_picture_avatar.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/date_form_picker_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/gender_radio_group_field.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/basic_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/email_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/phone_number_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/form_picker/username_text_form_field.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserProfilePage extends StatefulWidget {
  final String userId;
  const UserProfilePage({super.key, required this.userId});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool _isEditing = false;
  late final UserProfileBloc _userProfileBloc;
  final _formKey = GlobalKey<FormState>();
  final _refreshController = RefreshController();
  final _scrollController = ScrollController();

  final _userIdController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _bioController = TextEditingController();
  final _displayNameController = TextEditingController();
  Gender _selectedGender = Gender.male;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _userProfileBloc = UserProfileBloc(
      userRepository: injector.get<UserRepository>(),
      authBloc: context.read<AuthBloc>(),
    )..add(UserProfileEvent.loadUserProfile(isRefresh: false));
  }

  void _onRefresh() {
    _userProfileBloc.add(UserProfileEvent.loadUserProfile(isRefresh: true));
  }

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _onTapEditProfile() {
    context.showBottomSheet(
      child: (scrollController) {
        final labelStyle = context.textStyle.labelStyle;
        final redColor = context.themeColors.failure;
        final blueColor = context.themeColors.info;
        return ListView(
          shrinkWrap: true,
          controller: scrollController,
          children: [
            ListTile(
              leading: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: blueColor.withValues(alpha: 0.1),
                  child: Icon(Icons.photo_library, color: blueColor, size: 20),
                ),
              ),
              title: Text("Choose from Gallery", style: labelStyle),
              onTap: () {},
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: blueColor.withValues(alpha: 0.1),
                  child: Icon(Icons.camera_alt, color: blueColor, size: 20),
                ),
              ),
              title: Text("Take Photo", style: labelStyle),
              onTap: () {},
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: Material(
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: redColor.withValues(alpha: 0.1),
                  child: Icon(Icons.delete_forever, color: redColor, size: 20),
                ),
              ),
              title: Text(
                "Remove Photo",
                style: labelStyle.copyWith(color: redColor),
              ),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }

  void _onTapProfile(String imageUrl) {
    if (imageUrl.isEmpty) return;
    showDialog(
      context: context,
      builder:
          (_) => Dialog(
            child: InteractiveViewer(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                placeholder:
                    (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) => const Icon(
                      Icons.broken_image,
                      size: 80,
                      color: Colors.grey,
                    ),
              ),
            ),
          ),
    );
  }

  void _onTapGender(Gender? value) {
    if (value != null && _isEditing) {
      setState(() {
        _selectedGender = value;
      });
    }
  }

  void _onTapBirthdate() async {
    final time = await context.showDatetimePicker(
      initialDateTime: _selectedDate,
      mode: PickerMode.date,
    );
    if (time != null) {
      setState(() {
        _selectedDate = time;
      });
    }
  }

  void _blocListener(BuildContext ctx, UserProfileState state) {
    final isRefreshing = _refreshController.isRefresh;

    if (state is UserProfileStateSuccess ||
        state is UserProfileStateSuccessUpdate) {
      if (isRefreshing) _refreshController.refreshCompleted();
      if (state is UserProfileStateSuccess) {
        final userData = state.data;
        _userIdController.text = userData.userID;
        _usernameController.text = userData.username;
        _emailController.text = userData.email ?? "";
        _phoneNumberController.text = userData.phoneNumber ?? "";
        _bioController.text = userData.bio ?? "";
        _displayNameController.text = userData.displayName ?? "";
        setState(() {
          _selectedGender = userData.gender;
          _selectedDate = userData.birthdate;
          _isEditing = false;
        });
      } else if (state is UserProfileStateSuccessUpdate) {
        context.showToast(
          status: ToastStatus.success,
          title: "Update success",
          subtitle: "User Profile Updated Successfully",
        );
        while (context.canPop()) {
          context.pop();
        }
      }
    } else if (state is UserProfileStateFailed) {
      if (isRefreshing) _refreshController.refreshFailed();
      context.showToast(
        status: ToastStatus.failed,
        title: "Update Failed",
        subtitle: state.message,
      );
    }
  }

  void _onTapSubmit({required String userId}) {
    if (_formKey.currentState?.validate() ?? false) {
      if (_selectedDate == null) {
        context.showDialog(
          title: "Attention!",
          subtitle: "Please select your date of birth.",
        );
        return;
      }
      _userProfileBloc.add(
        UserProfileEvent.updateUserProfile(
          param: UpdateUserProfileParam(
            userId: userId,
            userName: _usernameController.text,
            email: _emailController.text,
            phoneNumber: _phoneNumberController.cleanNumberString,
            gender: _selectedGender,
            birthDate: _selectedDate!,
            bio: _bioController.text,
            displayName: _displayNameController.text,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _userProfileBloc.close();
    _refreshController.dispose();
    _scrollController.dispose();
    _userIdController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _bioController.dispose();
    _displayNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userProfileBloc,
      child: NativeScaffold(
        scrollController: _scrollController,
        onRefresh: _onRefresh,
        refreshController: _refreshController,
        title: const Text("User Profile"),
        actions: [
          TextButton(
            onPressed: _toggleEdit,
            child: Text(_isEditing ? "Cancel" : "Edit"),
          ),
        ],
        padding: AppStyles.paddingHorizontalMediumWithBottom,
        body: [
          BlocConsumer<UserProfileBloc, UserProfileState>(
            buildWhen:
                (previous, current) =>
                    current is UserProfileStateLoading ||
                    current is UserProfileStateSuccess ||
                    current is UserProfileStateFailed,
            listener: _blocListener,
            builder: (context, state) {
              final isRefreshing = _refreshController.isRefresh;
              UserProfile? userData;

              if (state is UserProfileStateSuccess) {
                userData = state.data;
              } else if (state is UserProfileStateSuccessUpdate) {
                userData = state.data;
              } else if (state is UserProfileStateFailed) {
                userData = state.previousData;
              }

              if (userData == null) {
                if (state is UserProfileStateLoading) {
                  return const Center(child: LoadingIndicatorWidget());
                } else if (state is UserProfileStateFailed) {
                  return Center(child: Text(state.message));
                } else {
                  return const SizedBox();
                }
              }

              if (state is UserProfileStateLoading && isRefreshing) {
                return _buildForm(context, userData);
              }

              if (state is UserProfileStateFailed) {
                return _buildForm(context, userData);
              }

              return _buildForm(context, userData);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildForm(BuildContext context, UserProfile userData) {
    final userId = userData.userID;
    final imageURL = userData.profilePictureUrl ?? "";
    final userName = userData.username;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => _onTapProfile(imageURL),
            child: Center(
              child: ProfilePictureAvatar(
                imageUrl: imageURL,
                titleOnFailedLoadImage: userName.firstLetter,
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: _onTapEditProfile,
              child: Text("Edit"),
            ),
          ),
          const SizedBox(height: 16),
          Text("User ID", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          BasicTextFormField(controller: _userIdController, enabled: false),
          const SizedBox(height: 16.0),
          Text("Username", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          UsernameTextFormField(
            enabled: _isEditing,
            controller: _usernameController,
          ),
          const SizedBox(height: 16.0),
          Text("Display Name", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          BasicTextFormField(
            enabled: _isEditing,
            controller: _displayNameController,
            maxLength: GlobalVariables.maxDisplayName,
            hintText: "Your store or personal name (e.g., Jane's Shop)",
          ),
          const SizedBox(height: 16.0),
          Text("Bio", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          BasicTextFormField(
            enabled: _isEditing,
            controller: _bioController,
            hintText:
                "Short description about you or your store (e.g., selling handmade crafts)",
          ),
          const SizedBox(height: 16),
          Text("Email", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          EmailTextFormField(enabled: _isEditing, controller: _emailController),
          const SizedBox(height: 16),
          Text("Phone Number", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          PhoneNumberTextFormField(
            enabled: _isEditing,
            controller: _phoneNumberController,
          ),
          const SizedBox(height: 16),
          Text("Gender", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          GenderRadioGroupField(
            selectedGender: _selectedGender,
            onChanged: _onTapGender,
            enabled: _isEditing,
          ),
          const SizedBox(height: 16),
          Text("Birthdate", style: context.textStyle.labelStyle),
          const SizedBox(height: 16.0),
          DateFormPickerField(
            selectedDate: _selectedDate,
            onTap: _isEditing ? _onTapBirthdate : null,
            enabled: _isEditing,
          ),
          const SizedBox(height: 32),
          SubmitButton(
            isDisabled: !_isEditing,
            onPressed: () => _onTapSubmit(userId: userId),
            label: "Edit Profile",
          ),
        ],
      ),
    );
  }
}
