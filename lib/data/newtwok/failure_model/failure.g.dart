// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureModelImpl _$$FailureModelImplFromJson(Map<String, dynamic> json) =>
    _$FailureModelImpl(
      message: json['Message'] as String? ?? '',
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$$FailureModelImplToJson(_$FailureModelImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'code': instance.code,
    };
