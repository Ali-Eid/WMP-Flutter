// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_song_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSongRequestModel _$CreateSongRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateSongRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateSongRequestModel {
  String get title => throw _privateConstructorUsedError;
  int get typeId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSongRequestModelCopyWith<CreateSongRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSongRequestModelCopyWith<$Res> {
  factory $CreateSongRequestModelCopyWith(CreateSongRequestModel value,
          $Res Function(CreateSongRequestModel) then) =
      _$CreateSongRequestModelCopyWithImpl<$Res, CreateSongRequestModel>;
  @useResult
  $Res call({String title, int typeId, double price, int artistId});
}

/// @nodoc
class _$CreateSongRequestModelCopyWithImpl<$Res,
        $Val extends CreateSongRequestModel>
    implements $CreateSongRequestModelCopyWith<$Res> {
  _$CreateSongRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? typeId = null,
    Object? price = null,
    Object? artistId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$CreateSongRequestModelImplCopyWith<$Res>
    implements $CreateSongRequestModelCopyWith<$Res> {
  factory _$$CreateSongRequestModelImplCopyWith(
          _$CreateSongRequestModelImpl value,
          $Res Function(_$CreateSongRequestModelImpl) then) =
      __$$CreateSongRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int typeId, double price, int artistId});
}

/// @nodoc
class __$$CreateSongRequestModelImplCopyWithImpl<$Res>
    extends _$CreateSongRequestModelCopyWithImpl<$Res,
        _$CreateSongRequestModelImpl>
    implements _$$CreateSongRequestModelImplCopyWith<$Res> {
  __$$CreateSongRequestModelImplCopyWithImpl(
      _$CreateSongRequestModelImpl _value,
      $Res Function(_$CreateSongRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? typeId = null,
    Object? price = null,
    Object? artistId = null,
  }) {
    return _then(_$CreateSongRequestModelImpl(
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
class _$CreateSongRequestModelImpl implements _CreateSongRequestModel {
  _$CreateSongRequestModelImpl(
      {required this.title,
      required this.typeId,
      required this.price,
      required this.artistId});

  factory _$CreateSongRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSongRequestModelImplFromJson(json);

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
    return 'CreateSongRequestModel(title: $title, typeId: $typeId, price: $price, artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSongRequestModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, typeId, price, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSongRequestModelImplCopyWith<_$CreateSongRequestModelImpl>
      get copyWith => __$$CreateSongRequestModelImplCopyWithImpl<
          _$CreateSongRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSongRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateSongRequestModel implements CreateSongRequestModel {
  factory _CreateSongRequestModel(
      {required final String title,
      required final int typeId,
      required final double price,
      required final int artistId}) = _$CreateSongRequestModelImpl;

  factory _CreateSongRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateSongRequestModelImpl.fromJson;

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
  _$$CreateSongRequestModelImplCopyWith<_$CreateSongRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
