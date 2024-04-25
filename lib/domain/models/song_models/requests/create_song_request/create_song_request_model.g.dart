// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_song_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSongRequestModelImpl _$$CreateSongRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSongRequestModelImpl(
      title: json['title'] as String,
      typeId: json['typeId'] as int,
      price: (json['price'] as num).toDouble(),
      artistId: json['artistId'] as int,
    );

Map<String, dynamic> _$$CreateSongRequestModelImplToJson(
        _$CreateSongRequestModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'typeId': instance.typeId,
      'price': instance.price,
      'artistId': instance.artistId,
    };
