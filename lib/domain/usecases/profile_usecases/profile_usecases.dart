import 'package:multiple_result/multiple_result.dart';
import 'package:wmp_project/domain/models/profile_model/profile_model.dart';
import 'package:wmp_project/domain/repository/repository.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/artis_model/artist_model.dart';
import '../../models/base_response_model/base_model.dart';
import '../base_usecases/base_usecase.dart';

class GetProfileUseCase
    implements BaseUseCaseEmptyInput<BaseResponseModel<ProfileModel>> {
  final Repository _repository;

  GetProfileUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<ProfileModel>, FailureModel>>
      execute() async {
    return await _repository.getProfile();
  }
}
