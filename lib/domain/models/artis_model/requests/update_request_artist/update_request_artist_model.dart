import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_request_artist_model.freezed.dart';
part 'update_request_artist_model.g.dart';

@freezed
abstract class UpdateRequestArtistModel with _$UpdateRequestArtistModel {
  factory UpdateRequestArtistModel({
    required int id,
    required String fname,
    required String lname,
    required int gender,
    required int countryId,
  }) = _UpdateRequestArtistModel;
  factory UpdateRequestArtistModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequestArtistModelFromJson(json);
}
