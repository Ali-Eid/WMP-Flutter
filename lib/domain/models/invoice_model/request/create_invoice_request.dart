import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_invoice_request.freezed.dart';
part 'create_invoice_request.g.dart';

@freezed
abstract class CreateInvoiceRequest with _$CreateInvoiceRequest {
  factory CreateInvoiceRequest({
    @Default([]) List<int> songsIds,
    @Default(0) int userId,
    @Default("") String creditCard,
  }) = _CreateInvoiceRequest;
  factory CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateInvoiceRequestFromJson(json);
}
