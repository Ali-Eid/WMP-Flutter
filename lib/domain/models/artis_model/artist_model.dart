// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_model.freezed.dart';
part 'artist_model.g.dart';

@freezed
abstract class ArtistModel with _$ArtistModel {
  factory ArtistModel({
    @Default(0) int id,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String country,
  }) = _ArtistModel;
  factory ArtistModel.fromJson(Map<String, dynamic> json) =>
      _$ArtistModelFromJson(json);
}
