// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_request_artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRequestArtistModelImpl _$$UpdateRequestArtistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRequestArtistModelImpl(
      id: json['id'] as int,
      fname: json['fname'] as String,
      lname: json['lname'] as String,
      gender: json['gender'] as int,
      countryId: json['countryId'] as int,
    );

Map<String, dynamic> _$$UpdateRequestArtistModelImplToJson(
        _$UpdateRequestArtistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fname': instance.fname,
      'lname': instance.lname,
      'gender': instance.gender,
      'countryId': instance.countryId,
    };
