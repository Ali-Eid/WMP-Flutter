import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wmp_project/domain/models/base_response_model/base_model.dart';
import 'package:wmp_project/domain/models/invoice_model/request/create_invoice_request.dart';
import 'package:wmp_project/domain/usecases/invoice_usecases/invoice_usecases.dart';

part 'invoic_event.dart';
part 'invoic_state.dart';
part 'invoic_bloc.freezed.dart';

class InvoicBloc extends Bloc<InvoicEvent, InvoicState> {
  final CreateInvoiceUseCase createInvoiceUseCase;
  InvoicBloc({required this.createInvoiceUseCase}) : super(const _Initial()) {
    on<InvoicEvent>((event, emit) async {
      await event.map(
        createInvice: (value) async {
          emit(const InvoicState.loading());
          final failureOrCreated =
              await createInvoiceUseCase.execute(value.request);
          failureOrCreated.when((success) {
            emit(InvoicState.loaded(success: success));
          }, (error) {
            emit(InvoicState.error(message: error.message));
          });
        },
      );
    });
  }
}
