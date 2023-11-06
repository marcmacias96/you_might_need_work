
import 'package:freezed_annotation/freezed_annotation.dart';

part 'industry.freezed.dart';
part 'industry.g.dart';

@freezed
class Industry with _$Industry {
  factory Industry({
    required String name,
  }) = _Industry;
	
  factory Industry.fromJson(Map<String, dynamic> json) =>
			_$IndustryFromJson(json);
}
