import 'package:multiple_result/multiple_result.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/artis_model/artist_model.dart';
import '../../models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import '../../models/artis_model/requests/update_request_artist/update_request_artist_model.dart';

import '../../models/base_response_model/base_model.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class GetArtistsUseCase
    implements BaseUseCaseEmptyInput<BaseResponseModel<List<ArtistModel>>> {
  final Repository _repository;

  GetArtistsUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<List<ArtistModel>>, FailureModel>>
      execute() async {
    return await _repository.artists();
  }
}

class GetArtistByIdUseCase
    implements BaseUseCase<int, BaseResponseModel<ArtistModel>> {
  final Repository _repository;

  GetArtistByIdUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<ArtistModel>, FailureModel>> execute(
      int input) async {
    return await _repository.artistById(input);
  }
}

class CreateArtistUseCase
    implements BaseUseCase<CreateRequestArtistModel, BaseResponseModel> {
  final Repository _repository;

  CreateArtistUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(
      CreateRequestArtistModel input) async {
    return await _repository.createArtist(createRequestArtistModel: input);
  }
}

class UpdateArtistUseCase
    implements BaseUseCase<UpdateRequestArtistModel, BaseResponseModel> {
  final Repository _repository;

  UpdateArtistUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(
      UpdateRequestArtistModel input) async {
    return await _repository.updateArtist(updateRequestArtistModel: input);
  }
}

class DeleteArtistUseCase implements BaseUseCase<int, BaseResponseModel> {
  final Repository _repository;

  DeleteArtistUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(int input) async {
    return await _repository.deleteArtist(artistId: input);
  }
}
