import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel({
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(name: "Message") String message,
    @Default('') String code,
  }) = _FailureModel;

  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);
}

Map<String, String> defaultError = {'message': "internal server error"};
