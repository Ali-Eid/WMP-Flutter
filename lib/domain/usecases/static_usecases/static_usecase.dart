import 'package:multiple_result/multiple_result.dart';
import 'package:wmp_project/domain/models/static_model/static_model.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/base_response_model/base_model.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class GetCountriesUseCase
    implements BaseUseCaseEmptyInput<BaseResponseModel<List<StaticModel>>> {
  final Repository _repository;

  GetCountriesUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await _repository.countries();
  }
}

class GetSongsTypeUseCase
    implements BaseUseCaseEmptyInput<BaseResponseModel<List<StaticModel>>> {
  final Repository _repository;

  GetSongsTypeUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<List<StaticModel>>, FailureModel>>
      execute() async {
    return await _repository.songsTypes();
  }
}
