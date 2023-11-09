import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';

part 'profile_form_state.dart';
part 'profile_form_cubit.freezed.dart';

/// A Cubit for managing user profile form data.
///
/// This Cubit is responsible for managing the state related to user 
/// profile form data.
/// It allows you to update and maintain the user's profile information.
///
/// Example:
///
/// ```dart
/// final profileFormCubit = getIt<ProfileFormCubit>();
///
/// // Update the user's profile information with a [ProfileForm] instance.
/// profileFormCubit.updateModel(profileForm);
/// ```
///
/// In the example above, you can use `getIt<ProfileFormCubit>()` to obtain an instance
/// of [ProfileFormCubit], which is responsible for managing user profile form data.
/// The Cubit provides a method for updating the user's profile information using a
/// [ProfileForm] instance.
@injectable
class ProfileFormCubit extends Cubit<ProfileFormState> {
  ProfileFormCubit() : super(ProfileFormState.initial());

  /// Update the user's profile information with a [ProfileForm] instance.
  ///
  /// This method updates the user's profile information in the state 
  /// by replacing
  /// the current [ProfileForm] with the provided [profileForm] 
  /// to share it in the different forms of the page view
  void updateModel(ProfileForm profileForm) {
    emit(state.copyWith(profileForm: profileForm));
  }
}
