part of 'invoic_bloc.dart';

@freezed
class InvoicEvent with _$InvoicEvent {
  const factory InvoicEvent.createInvice(
      {required CreateInvoiceRequest request}) = _CreateInvoice;
}
