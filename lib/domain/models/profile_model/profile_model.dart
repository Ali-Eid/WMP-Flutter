import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    @Default(0) int id,
    @Default("") String email,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String address,
  }) = _ProfileModel;
  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
