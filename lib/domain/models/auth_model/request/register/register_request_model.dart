import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

@freezed
abstract class RegisterRequestModel with _$RegisterRequestModel {
  factory RegisterRequestModel({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
    String? address,
  }) = _RegisterRequestModel;
  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}
