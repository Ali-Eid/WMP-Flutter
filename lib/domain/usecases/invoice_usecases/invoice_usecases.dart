import 'package:multiple_result/multiple_result.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/base_response_model/base_model.dart';
import '../../models/invoice_model/request/create_invoice_request.dart';
import '../../models/song_models/requests/create_song_request/create_song_request_model.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class CreateInvoiceUseCase
    implements BaseUseCase<CreateInvoiceRequest, BaseResponseModel> {
  final Repository _repository;

  CreateInvoiceUseCase(this._repository);

  @override
  Future<Result<BaseResponseModel, FailureModel>> execute(
      CreateInvoiceRequest input) async {
    return await _repository.createInvoice(request: input);
  }
}
