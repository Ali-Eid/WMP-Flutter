part of 'artist_bloc.dart';

@freezed
class ArtistEvent with _$ArtistEvent {
  const factory ArtistEvent.getArtists() = _GetArtists;
  const factory ArtistEvent.searchArtist({required String atristName}) =
      _SearchArtists;
  const factory ArtistEvent.addArtist(
          {required CreateRequestArtistModel createRequestArtistModel}) =
      _AddArtist;
}
