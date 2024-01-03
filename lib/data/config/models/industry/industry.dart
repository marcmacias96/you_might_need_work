
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


@freezed
class IndustriesResponse with _$IndustriesResponse {
  factory IndustriesResponse({
    @JsonKey(name: 'code_transaction') required String codeTransaction,
    @JsonKey(name: 'data') required IndustriesData data,
  }) = _IndustriesResponse;

  factory IndustriesResponse.fromJson(Map<String, dynamic> json) =>
      _$IndustriesResponseFromJson(json);
}

@freezed
class IndustriesData with _$IndustriesData {
  const factory IndustriesData({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required dynamic next,
    @JsonKey(name: 'previous') required dynamic previous,
    @JsonKey(name: 'results') required List<Industry> results,
  }) = _IndustriesData;

  factory IndustriesData.fromJson(Map<String, dynamic> json) =>
      _$IndustriesDataFromJson(json);
}
