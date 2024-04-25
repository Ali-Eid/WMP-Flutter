import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/artis_model/artist_model.dart';
import '../../../../../domain/models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import '../../../../../domain/models/base_response_model/base_model.dart';
import '../../../../../domain/usecases/artist_usecases/artist_usecases.dart';

part 'artist_event.dart';
part 'artist_state.dart';
part 'artist_bloc.freezed.dart';

class ArtistBloc extends Bloc<ArtistEvent, ArtistState> {
  final GetArtistsUseCase getArtistsUseCase;
  final CreateArtistUseCase createArtistUseCase;
  List<ArtistModel> artists = [];
  ArtistBloc({
    required this.getArtistsUseCase,
    required this.createArtistUseCase,
  }) : super(const ArtistState.initial()) {
    on<ArtistEvent>((event, emit) async {
      await event.map(
        getArtists: (value) async {
          artists.clear();
          emit(const ArtistState.loading());
          final failureOrArtists = await getArtistsUseCase.execute();
          failureOrArtists.when((success) {
            artists = success.data;
            emit(ArtistState.loaded(artists: success.data));
          }, (error) {
            emit(ArtistState.error(message: error.message));
          });
        },
        addArtist: (value) async {
          emit(const ArtistState.loading());
          final failureOrArtists =
              await createArtistUseCase.execute(value.createRequestArtistModel);
          failureOrArtists.when((success) {
            emit(ArtistState.addArtist(success: success));
          }, (error) {
            emit(ArtistState.error(message: error.message));
          });
        },
        searchArtist: (value) async {
          emit(const ArtistState.loading());
          if (value.atristName.isEmpty) {
            emit(ArtistState.loaded(artists: artists));
          } else {
            emit(ArtistState.loaded(
                artists: artists
                    .where((element) =>
                        element.firstName
                            .toLowerCase()
                            .contains(value.atristName) ||
                        element.lastName
                            .toLowerCase()
                            .contains(value.atristName))
                    .toList()));
          }
        },
      );
    });
  }
}
