// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_model.freezed.dart';
part 'song_model.g.dart';

@freezed
abstract class SongModel with _$SongModel {
  factory SongModel({
    @Default(0) int id,
    @Default("") String title,
    @Default(0) double price,
    @Default("") String type,
    @Default(0) int artistId,
    @Default("") String artistName,
  }) = _SongModel;
  factory SongModel.fromJson(Map<String, dynamic> json) =>
      _$SongModelFromJson(json);
}
