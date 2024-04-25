// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_request_song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateRequestSongModelImpl _$$UpdateRequestSongModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateRequestSongModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      typeId: json['typeId'] as int,
      price: (json['price'] as num).toDouble(),
      artistId: json['artistId'] as int,
    );

Map<String, dynamic> _$$UpdateRequestSongModelImplToJson(
        _$UpdateRequestSongModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'typeId': instance.typeId,
      'price': instance.price,
      'artistId': instance.artistId,
    };
