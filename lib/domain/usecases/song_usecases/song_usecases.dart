import 'package:multiple_result/multiple_result.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/base_response_model/base_model.dart';
import '../../models/song_models/requests/create_song_request/create_song_request_model.dart';
import '../../models/song_models/requests/update_song_request/update_request_song_model.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class GetSongsUseCase
    implements BaseUseCaseEmptyInput<BaseResponseModel<List<SongModel>>> {
  final Repository _repository;

  GetSongsUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>>
      execute() async {
    return await _repository.songs();
  }
}

class GetSongByIdUseCase
    implements BaseUseCase<int, BaseResponseModel<SongModel>> {
  final Repository _repository;

  GetSongByIdUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<SongModel>, FailureModel>> execute(
      int input) async {
    return await _repository.songById(input);
  }
}

class GetSongsByArtistIdUseCase
    implements BaseUseCase<int, BaseResponseModel<List<SongModel>>> {
  final Repository _repository;

  GetSongsByArtistIdUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<List<SongModel>>, FailureModel>> execute(
      int input) async {
    return await _repository.songsByArtist(input);
  }
}

class CreateSongUseCase
    implements BaseUseCase<CreateSongRequestModel, BaseResponseModel> {
  final Repository _repository;

  CreateSongUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(
      CreateSongRequestModel input) async {
    return await _repository.createSong(createSongRequestModel: input);
  }
}

class UpdateSongUseCase
    implements BaseUseCase<UpdateRequestSongModel, BaseResponseModel> {
  final Repository _repository;

  UpdateSongUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(
      UpdateRequestSongModel input) async {
    return await _repository.updateSong(updateRequestSongModel: input);
  }
}

class DeleteSongUseCase implements BaseUseCase<int, BaseResponseModel> {
  final Repository _repository;

  DeleteSongUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(int input) async {
    return await _repository.deleteSong(songId: input);
  }
}
