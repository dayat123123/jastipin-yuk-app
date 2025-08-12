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
import 'package:jastipin_yuk/shared/misc/formatters.dart';
import 'package:jastipin_yuk/shared/widgets/avatar/profile_picture_avatar.dart';
import 'package:jastipin_yuk/shared/widgets/button/submit_button.dart';
import 'package:jastipin_yuk/shared/widgets/container/card_container_widget.dart';
import 'package:jastipin_yuk/shared/widgets/loading/loading_indicator_widget.dart';
import 'package:jastipin_yuk/shared/widgets/scaffold/native_scaffold.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/email_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/phone_number_text_form_field.dart';
import 'package:jastipin_yuk/shared/widgets/text_form_field/username_text_form_field.dart';

class UserProfilePage extends StatefulWidget {
  final String userId;
  const UserProfilePage({super.key, required this.userId});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool _isEditing = false;
  late final UserProfileBloc _userProfileBloc;
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  Gender _gender = Gender.male;
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _userProfileBloc = UserProfileBloc(
      userRepository: injector.get<UserRepository>(),
      authBloc: context.read<AuthBloc>(),
    )..add(UserProfileEvent.loadUserProfile());
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
              onTap: () {
                // TODO: Add gallery picker logic
              },
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
              onTap: () {
                // TODO: Add camera capture logic
              },
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
              onTap: () {
                // TODO: Add remove photo logic
              },
            ),
          ],
        );
      },
    );
  }

  void _onTapProfile(String imageUrl) {
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
        _gender = value;
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
    if (state is UserProfileStateSuccess) {
      final userData = state.data;
      _usernameController.text = userData.username;
      _emailController.text = userData.email ?? "";
      _phoneNumberController.text = userData.phoneNumber ?? "";
      setState(() {
        _gender = userData.gender;
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
    } else if (state is UserProfileStateFailed) {
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
            gender: _gender,
            birthDate: _selectedDate!,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _userProfileBloc.close();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _userProfileBloc,
      child: NativeScaffold(
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
            listener: _blocListener,
            builder: (context, state) {
              if (state is UserProfileStateLoading) {
                return const Center(child: LoadingIndicatorWidget());
              }

              if (state is UserProfileStateFailed) {
                return Center(child: Text('Error: ${state.message}'));
              }

              UserProfile? userData;
              if (state is UserProfileStateSuccess) {
                userData = state.data;
              } else if (state is UserProfileStateSuccessUpdate) {
                userData = state.data;
              }

              if (userData == null) {
                return Center(child: Text('Error: Unknown state'));
              }

              final userId = userData.userID;
              final imageURL = userData.profilePictureUrl;
              final userName = userData.username;

              return Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => _onTapProfile(imageURL ?? ""),
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
                      SizedBox(
                        height: 50,
                        child: CardContainerWidget(
                          padding: AppStyles.paddingHorizontalMedium,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            userData.userID,
                            style: context.textStyle.hintStyle,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Text("Username", style: context.textStyle.labelStyle),
                      const SizedBox(height: 16.0),
                      UsernameTextFormField(
                        enabled: _isEditing,
                        controller: _usernameController,
                      ),
                      const SizedBox(height: 16),
                      Text("Email", style: context.textStyle.labelStyle),
                      const SizedBox(height: 16.0),
                      EmailTextFormField(
                        enabled: _isEditing,
                        controller: _emailController,
                      ),
                      const SizedBox(height: 16),
                      Text("Phone Number", style: context.textStyle.labelStyle),
                      const SizedBox(height: 16.0),
                      PhoneNumberTextFormField(
                        enabled: _isEditing,
                        controller: _phoneNumberController,
                      ),
                      const SizedBox(height: 16),
                      Text("Gender", style: context.textStyle.labelStyle),
                      const SizedBox(height: 8.0),
                      DropdownButton<Gender>(
                        borderRadius: AppStyles.buttonRadius,
                        style: context.textStyle.labelStyle,
                        alignment: Alignment.center,
                        value: _gender,
                        dropdownColor: context.themeColors.dialogColor,
                        elevation: 0,
                        items:
                            Gender.values.map((gender) {
                              return DropdownMenuItem<Gender>(
                                value: gender,
                                child: Text(gender.label),
                              );
                            }).toList(),
                        onChanged:
                            _isEditing
                                ? (Gender? newGender) {
                                  if (newGender != null) {
                                    _onTapGender(newGender);
                                  }
                                }
                                : null,
                        disabledHint: Text(_gender.label),
                      ),

                      const SizedBox(height: 16),
                      Text("Birthdate", style: context.textStyle.labelStyle),
                      const SizedBox(height: 16.0),
                      GestureDetector(
                        onTap: _isEditing ? _onTapBirthdate : null,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: AppStyles.borderRadiusMediumG,
                            border: Border.all(
                              width: AppStyles.borderWidth,
                              color:
                                  _selectedDate == null || !_isEditing
                                      ? context.themeColors.separator
                                      : context.themeColors.primary,
                            ),
                          ),
                          padding: AppStyles.paddingAllSmall,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                size: 20,
                                color:
                                    _selectedDate == null || !_isEditing
                                        ? context.themeColors.disabled
                                        : context.themeColors.primary,
                              ),
                              SizedBox(height: 24, child: VerticalDivider()),
                              Text(
                                _selectedDate == null
                                    ? "Tap to select your birthdate"
                                    : Formatters.formatDateTime(_selectedDate),
                                style: context.textStyle.body.copyWith(
                                  color:
                                      _selectedDate == null || !_isEditing
                                          ? context.themeColors.hintText
                                          : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 32),
                      SubmitButton(
                        isDisabled: !_isEditing,
                        onPressed: () => _onTapSubmit(userId: userId),
                        label: "Edit Profile",
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
