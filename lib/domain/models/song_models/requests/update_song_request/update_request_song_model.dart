import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_request_song_model.freezed.dart';
part 'update_request_song_model.g.dart';

@freezed
abstract class UpdateRequestSongModel with _$UpdateRequestSongModel {
  factory UpdateRequestSongModel(
      {required int id,
      required String title,
      required int typeId,
      required double price,
      required int artistId}) = _UpdateRequestSongModel;
  factory UpdateRequestSongModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequestSongModelFromJson(json);
}
