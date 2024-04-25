// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_request_artist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRequestArtistModel _$CreateRequestArtistModelFromJson(
    Map<String, dynamic> json) {
  return _CreateRequestArtistModel.fromJson(json);
}

/// @nodoc
mixin _$CreateRequestArtistModel {
  String get fname => throw _privateConstructorUsedError;
  String get lname => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  int get countryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRequestArtistModelCopyWith<CreateRequestArtistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRequestArtistModelCopyWith<$Res> {
  factory $CreateRequestArtistModelCopyWith(CreateRequestArtistModel value,
          $Res Function(CreateRequestArtistModel) then) =
      _$CreateRequestArtistModelCopyWithImpl<$Res, CreateRequestArtistModel>;
  @useResult
  $Res call({String fname, String lname, int gender, int countryId});
}

/// @nodoc
class _$CreateRequestArtistModelCopyWithImpl<$Res,
        $Val extends CreateRequestArtistModel>
    implements $CreateRequestArtistModelCopyWith<$Res> {
  _$CreateRequestArtistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fname = null,
    Object? lname = null,
    Object? gender = null,
    Object? countryId = null,
  }) {
    return _then(_value.copyWith(
      fname: null == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String,
      lname: null == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRequestArtistModelImplCopyWith<$Res>
    implements $CreateRequestArtistModelCopyWith<$Res> {
  factory _$$CreateRequestArtistModelImplCopyWith(
          _$CreateRequestArtistModelImpl value,
          $Res Function(_$CreateRequestArtistModelImpl) then) =
      __$$CreateRequestArtistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fname, String lname, int gender, int countryId});
}

/// @nodoc
class __$$CreateRequestArtistModelImplCopyWithImpl<$Res>
    extends _$CreateRequestArtistModelCopyWithImpl<$Res,
        _$CreateRequestArtistModelImpl>
    implements _$$CreateRequestArtistModelImplCopyWith<$Res> {
  __$$CreateRequestArtistModelImplCopyWithImpl(
      _$CreateRequestArtistModelImpl _value,
      $Res Function(_$CreateRequestArtistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fname = null,
    Object? lname = null,
    Object? gender = null,
    Object? countryId = null,
  }) {
    return _then(_$CreateRequestArtistModelImpl(
      fname: null == fname
          ? _value.fname
          : fname // ignore: cast_nullable_to_non_nullable
              as String,
      lname: null == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRequestArtistModelImpl implements _CreateRequestArtistModel {
  _$CreateRequestArtistModelImpl(
      {required this.fname,
      required this.lname,
      required this.gender,
      required this.countryId});

  factory _$CreateRequestArtistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRequestArtistModelImplFromJson(json);

  @override
  final String fname;
  @override
  final String lname;
  @override
  final int gender;
  @override
  final int countryId;

  @override
  String toString() {
    return 'CreateRequestArtistModel(fname: $fname, lname: $lname, gender: $gender, countryId: $countryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRequestArtistModelImpl &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fname, lname, gender, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRequestArtistModelImplCopyWith<_$CreateRequestArtistModelImpl>
      get copyWith => __$$CreateRequestArtistModelImplCopyWithImpl<
          _$CreateRequestArtistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRequestArtistModelImplToJson(
      this,
    );
  }
}

abstract class _CreateRequestArtistModel implements CreateRequestArtistModel {
  factory _CreateRequestArtistModel(
      {required final String fname,
      required final String lname,
      required final int gender,
      required final int countryId}) = _$CreateRequestArtistModelImpl;

  factory _CreateRequestArtistModel.fromJson(Map<String, dynamic> json) =
      _$CreateRequestArtistModelImpl.fromJson;

  @override
  String get fname;
  @override
  String get lname;
  @override
  int get gender;
  @override
  int get countryId;
  @override
  @JsonKey(ignore: true)
  _$$CreateRequestArtistModelImplCopyWith<_$CreateRequestArtistModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
