// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_request_artist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateRequestArtistModel _$UpdateRequestArtistModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateRequestArtistModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateRequestArtistModel {
  int get id => throw _privateConstructorUsedError;
  String get fname => throw _privateConstructorUsedError;
  String get lname => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  int get countryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateRequestArtistModelCopyWith<UpdateRequestArtistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRequestArtistModelCopyWith<$Res> {
  factory $UpdateRequestArtistModelCopyWith(UpdateRequestArtistModel value,
          $Res Function(UpdateRequestArtistModel) then) =
      _$UpdateRequestArtistModelCopyWithImpl<$Res, UpdateRequestArtistModel>;
  @useResult
  $Res call({int id, String fname, String lname, int gender, int countryId});
}

/// @nodoc
class _$UpdateRequestArtistModelCopyWithImpl<$Res,
        $Val extends UpdateRequestArtistModel>
    implements $UpdateRequestArtistModelCopyWith<$Res> {
  _$UpdateRequestArtistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fname = null,
    Object? lname = null,
    Object? gender = null,
    Object? countryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$UpdateRequestArtistModelImplCopyWith<$Res>
    implements $UpdateRequestArtistModelCopyWith<$Res> {
  factory _$$UpdateRequestArtistModelImplCopyWith(
          _$UpdateRequestArtistModelImpl value,
          $Res Function(_$UpdateRequestArtistModelImpl) then) =
      __$$UpdateRequestArtistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fname, String lname, int gender, int countryId});
}

/// @nodoc
class __$$UpdateRequestArtistModelImplCopyWithImpl<$Res>
    extends _$UpdateRequestArtistModelCopyWithImpl<$Res,
        _$UpdateRequestArtistModelImpl>
    implements _$$UpdateRequestArtistModelImplCopyWith<$Res> {
  __$$UpdateRequestArtistModelImplCopyWithImpl(
      _$UpdateRequestArtistModelImpl _value,
      $Res Function(_$UpdateRequestArtistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fname = null,
    Object? lname = null,
    Object? gender = null,
    Object? countryId = null,
  }) {
    return _then(_$UpdateRequestArtistModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$UpdateRequestArtistModelImpl implements _UpdateRequestArtistModel {
  _$UpdateRequestArtistModelImpl(
      {required this.id,
      required this.fname,
      required this.lname,
      required this.gender,
      required this.countryId});

  factory _$UpdateRequestArtistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateRequestArtistModelImplFromJson(json);

  @override
  final int id;
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
    return 'UpdateRequestArtistModel(id: $id, fname: $fname, lname: $lname, gender: $gender, countryId: $countryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRequestArtistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fname, fname) || other.fname == fname) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fname, lname, gender, countryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRequestArtistModelImplCopyWith<_$UpdateRequestArtistModelImpl>
      get copyWith => __$$UpdateRequestArtistModelImplCopyWithImpl<
          _$UpdateRequestArtistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateRequestArtistModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateRequestArtistModel implements UpdateRequestArtistModel {
  factory _UpdateRequestArtistModel(
      {required final int id,
      required final String fname,
      required final String lname,
      required final int gender,
      required final int countryId}) = _$UpdateRequestArtistModelImpl;

  factory _UpdateRequestArtistModel.fromJson(Map<String, dynamic> json) =
      _$UpdateRequestArtistModelImpl.fromJson;

  @override
  int get id;
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
  _$$UpdateRequestArtistModelImplCopyWith<_$UpdateRequestArtistModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
