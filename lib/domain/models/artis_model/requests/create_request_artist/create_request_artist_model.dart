import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request_artist_model.freezed.dart';
part 'create_request_artist_model.g.dart';

@freezed
abstract class CreateRequestArtistModel with _$CreateRequestArtistModel {
  factory CreateRequestArtistModel({
    required String fname,
    required String lname,
    required int gender,
    required int countryId,
  }) = _CreateRequestArtistModel;
  factory CreateRequestArtistModel.fromJson(Map<String, dynamic> json) =>
      _$CreateRequestArtistModelFromJson(json);
}
