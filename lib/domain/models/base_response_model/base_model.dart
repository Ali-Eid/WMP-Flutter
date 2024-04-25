import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseResponseModel<T> with _$BaseResponseModel<T> {
  factory BaseResponseModel({
    @Default(0) int statusCode,
    @Default('') String message,
    required T data,
  }) = _BaseResponseModel;
  factory BaseResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseModelFromJson(json, fromJsonT);
}
