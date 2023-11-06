import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:you_might_need_work/features/profile_form/models/models.dart';

part 'profile_form_state.dart';
part 'profile_form_cubit.freezed.dart';

@injectable
class ProfileFormCubit extends Cubit<ProfileFormState> {
  ProfileFormCubit() : super(ProfileFormState.initial());

  void updateModel(ProfileForm profileForm) {
    emit(state.copyWith(profileForm: profileForm));
  }
}
