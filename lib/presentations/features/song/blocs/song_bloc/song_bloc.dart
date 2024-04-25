import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wmp_project/domain/models/song_models/requests/create_song_request/create_song_request_model.dart';
import 'package:wmp_project/domain/usecases/song_usecases/song_usecases.dart';

import '../../../../../domain/models/base_response_model/base_model.dart';
import '../../../../../domain/models/song_models/song_model.dart';

part 'song_event.dart';
part 'song_state.dart';
part 'song_bloc.freezed.dart';

class SongBloc extends Bloc<SongEvent, SongState> {
  final GetSongsUseCase getSongsUseCase;
  final CreateSongUseCase createSongUseCase;
  final GetSongsByArtistIdUseCase getSongsByArtistIdUseCase;
  List<SongModel> songs = [];

  SongBloc({
    required this.getSongsByArtistIdUseCase,
    required this.getSongsUseCase,
    required this.createSongUseCase,
  }) : super(const _Initial()) {
    on<SongEvent>((event, emit) async {
      await event.map(
        songsByArtist: (value) async {
          emit(const SongState.loading());
          final failureOrSongs =
              await getSongsByArtistIdUseCase.execute(value.artistId);

          failureOrSongs.when((success) {
            emit(SongState.loaded(songs: success.data));
          }, (error) {
            emit(SongState.error(message: error.message));
          });
        },
        getSongs: (value) async {
          songs.clear();
          emit(const SongState.loading());
          final failureOrArtists = await getSongsUseCase.execute();
          failureOrArtists.when((success) {
            songs = success.data;
            emit(SongState.loaded(songs: success.data));
          }, (error) {
            emit(SongState.error(message: error.message));
          });
        },
        searchSongs: (value) async {
          emit(const SongState.loading());
          if (value.songTitle.isEmpty) {
            emit(SongState.loaded(songs: songs));
          } else {
            emit(SongState.loaded(
                songs: songs
                    .where((element) =>
                        element.title.toLowerCase().contains(value.songTitle))
                    .toList()));
          }
        },
        addSong: (value) async {
          emit(const SongState.loading());
          final failureOrArtists =
              await createSongUseCase.execute(value.createSongRequestModel);
          failureOrArtists.when((success) {
            emit(SongState.addSong(success: success));
          }, (error) {
            emit(SongState.error(message: error.message));
          });
        },
      );
    });
  }
}
