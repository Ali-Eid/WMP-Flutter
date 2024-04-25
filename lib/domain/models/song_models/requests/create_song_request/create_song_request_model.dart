import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_song_request_model.freezed.dart';
part 'create_song_request_model.g.dart';

@freezed
abstract class CreateSongRequestModel with _$CreateSongRequestModel {
  factory CreateSongRequestModel(
      {required String title,
      required int typeId,
      required double price,
      required int artistId}) = _CreateSongRequestModel;
  factory CreateSongRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateSongRequestModelFromJson(json);
}
