// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistModelImpl _$$ArtistModelImplFromJson(Map<String, dynamic> json) =>
    _$ArtistModelImpl(
      id: json['id'] as int? ?? 0,
      firstName: json['firstName'] as String? ?? "",
      lastName: json['lastName'] as String? ?? "",
      country: json['country'] as String? ?? "",
    );

Map<String, dynamic> _$$ArtistModelImplToJson(_$ArtistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'country': instance.country,
    };
