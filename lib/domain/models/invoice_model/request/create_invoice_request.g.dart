// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_invoice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateInvoiceRequestImpl _$$CreateInvoiceRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateInvoiceRequestImpl(
      songsIds:
          (json['songsIds'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              const [],
      userId: json['userId'] as int? ?? 0,
      creditCard: json['creditCard'] as String? ?? "",
    );

Map<String, dynamic> _$$CreateInvoiceRequestImplToJson(
        _$CreateInvoiceRequestImpl instance) =>
    <String, dynamic>{
      'songsIds': instance.songsIds,
      'userId': instance.userId,
      'creditCard': instance.creditCard,
    };
