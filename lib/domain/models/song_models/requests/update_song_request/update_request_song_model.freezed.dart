// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_request_song_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateRequestSongModel _$UpdateRequestSongModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateRequestSongModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateRequestSongModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get typeId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequestSongModelCopyWith<UpdateRequestSongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRequestSongModelCopyWith<$Res> {
  factory $UpdateRequestSongModelCopyWith(UpdateRequestSongModel value,
          $Res Function(UpdateRequestSongModel) then) =
      _$UpdateRequestSongModelCopyWithImpl<$Res, UpdateRequestSongModel>;
  @useResult
  $Res call({int id, String title, int typeId, double price, int artistId});
}

/// @nodoc
class _$UpdateRequestSongModelCopyWithImpl<$Res,
        $Val extends UpdateRequestSongModel>
    implements $UpdateRequestSongModelCopyWith<$Res> {
  _$UpdateRequestSongModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? typeId = null,
    Object? price = null,
    Object? artistId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateRequestSongModelImplCopyWith<$Res>
    implements $UpdateRequestSongModelCopyWith<$Res> {
  factory _$$UpdateRequestSongModelImplCopyWith(
          _$UpdateRequestSongModelImpl value,
          $Res Function(_$UpdateRequestSongModelImpl) then) =
      __$$UpdateRequestSongModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, int typeId, double price, int artistId});
}

/// @nodoc
class __$$UpdateRequestSongModelImplCopyWithImpl<$Res>
    extends _$UpdateRequestSongModelCopyWithImpl<$Res,
        _$UpdateRequestSongModelImpl>
    implements _$$UpdateRequestSongModelImplCopyWith<$Res> {
  __$$UpdateRequestSongModelImplCopyWithImpl(
      _$UpdateRequestSongModelImpl _value,
      $Res Function(_$UpdateRequestSongModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? typeId = null,
    Object? price = null,
    Object? artistId = null,
  }) {
    return _then(_$UpdateRequestSongModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateRequestSongModelImpl implements _UpdateRequestSongModel {
  _$UpdateRequestSongModelImpl(
      {required this.id,
      required this.title,
      required this.typeId,
      required this.price,
      required this.artistId});

  factory _$UpdateRequestSongModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRequestSongModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int typeId;
  @override
  final double price;
  @override
  final int artistId;

  @override
  String toString() {
    return 'UpdateRequestSongModel(id: $id, title: $title, typeId: $typeId, price: $price, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestSongModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, typeId, price, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestSongModelImplCopyWith<_$UpdateRequestSongModelImpl>
      get copyWith => __$$UpdateRequestSongModelImplCopyWithImpl<
          _$UpdateRequestSongModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRequestSongModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateRequestSongModel implements UpdateRequestSongModel {
  factory _UpdateRequestSongModel(
      {required final int id,
      required final String title,
      required final int typeId,
      required final double price,
      required final int artistId}) = _$UpdateRequestSongModelImpl;

  factory _UpdateRequestSongModel.fromJson(Map<String, dynamic> json) =
      _$UpdateRequestSongModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get typeId;
  @override
  double get price;
  @override
  int get artistId;
  @override
  @JsonKey(ignore: true)
  _$$UpdateRequestSongModelImplCopyWith<_$UpdateRequestSongModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
