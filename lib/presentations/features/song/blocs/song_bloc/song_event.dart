part of 'song_bloc.dart';

@freezed
class SongEvent with _$SongEvent {
  const factory SongEvent.songsByArtist({required int artistId}) =
      _GetSongsByArtist;
  const factory SongEvent.getSongs() = _GetSongs;
  const factory SongEvent.searchSongs({required String songTitle}) =
      _SearchSongs;
  const factory SongEvent.addSong(
      {required CreateSongRequestModel createSongRequestModel}) = _AddSongs;
}
