import 'package:multiple_result/src/result.dart';

import 'package:wmp_project/data/newtwok/failure_model/failure.dart';

import '../../models/auth_model/auth_model.dart';
import '../../models/auth_model/request/login_request_model.dart';
import '../../models/auth_model/request/register/register_request_model.dart';
import '../../models/base_response_model/base_model.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class LoginUseCase
    implements BaseUseCase<LoginRequestModel, BaseResponseModel<AuthModel>> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> execute(
      LoginRequestModel input) async {
    return await _repository.login(requestModel: input);
  }
}

class RegisterUseCase
    implements BaseUseCase<RegisterRequestModel, BaseResponseModel<AuthModel>> {
  final Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel<AuthModel>, FailureModel>> execute(
      RegisterRequestModel input) async {
    return await _repository.register(registerRequestModel: input);
  }
}
