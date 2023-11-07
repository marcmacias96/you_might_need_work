
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_might_need_work/data/profile/enums/enums.dart';
import 'package:you_might_need_work/data/profile/helpers/helpers.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  factory Status({
        required String display,
        @OnboardingStatusConverter()
        required OnboardingStatus value,
        @JsonKey(name: 'require_action')
        required bool requireAction,
        required String message,
    }) = _Status;
	
  factory Status.fromJson(Map<String, dynamic> json) =>
			_$StatusFromJson(json);
}
