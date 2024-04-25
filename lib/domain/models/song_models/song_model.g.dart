// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongModelImpl _$$SongModelImplFromJson(Map<String, dynamic> json) =>
    _$SongModelImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      price: (json['price'] as num?)?.toDouble() ?? 0,
      type: json['type'] as String? ?? "",
      artistId: json['artistId'] as int? ?? 0,
      artistName: json['artistName'] as String? ?? "",
    );

Map<String, dynamic> _$$SongModelImplToJson(_$SongModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'type': instance.type,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
    };
