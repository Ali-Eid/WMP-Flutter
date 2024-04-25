// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestModelImpl _$$RegisterRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$RegisterRequestModelImplToJson(
        _$RegisterRequestModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
    };
