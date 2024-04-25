part of 'invoic_bloc.dart';

@freezed
class InvoicState with _$InvoicState {
  const factory InvoicState.initial() = _Initial;
  const factory InvoicState.loading() = _Loading;
  const factory InvoicState.loaded({required BaseResponseModel success}) =
      _Loaded;
  const factory InvoicState.error({required String message}) = _Error;
}
