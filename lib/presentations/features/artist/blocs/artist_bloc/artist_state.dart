part of 'artist_bloc.dart';

@freezed
class ArtistState with _$ArtistState {
  const factory ArtistState.initial() = _Initial;

  const factory ArtistState.loading() = _Loading;
  const factory ArtistState.loaded({required List<ArtistModel> artists}) =
      _Loaded;
  const factory ArtistState.addArtist({required BaseResponseModel success}) =
      _AddedArtist;
  const factory ArtistState.error({required String message}) = _Error;
}
