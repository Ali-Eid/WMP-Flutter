// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_request_artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateRequestArtistModelImpl _$$CreateRequestArtistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateRequestArtistModelImpl(
      fname: json['fname'] as String,
      lname: json['lname'] as String,
      gender: json['gender'] as int,
      countryId: json['countryId'] as int,
    );

Map<String, dynamic> _$$CreateRequestArtistModelImplToJson(
        _$CreateRequestArtistModelImpl instance) =>
    <String, dynamic>{
      'fname': instance.fname,
      'lname': instance.lname,
      'gender': instance.gender,
      'countryId': instance.countryId,
    };
