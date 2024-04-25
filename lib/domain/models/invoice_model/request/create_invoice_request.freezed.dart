// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_invoice_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateInvoiceRequest _$CreateInvoiceRequestFromJson(Map<String, dynamic> json) {
  return _CreateInvoiceRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateInvoiceRequest {
  List<int> get songsIds => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get creditCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateInvoiceRequestCopyWith<CreateInvoiceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateInvoiceRequestCopyWith<$Res> {
  factory $CreateInvoiceRequestCopyWith(CreateInvoiceRequest value,
          $Res Function(CreateInvoiceRequest) then) =
      _$CreateInvoiceRequestCopyWithImpl<$Res, CreateInvoiceRequest>;
  @useResult
  $Res call({List<int> songsIds, int userId, String creditCard});
}

/// @nodoc
class _$CreateInvoiceRequestCopyWithImpl<$Res,
        $Val extends CreateInvoiceRequest>
    implements $CreateInvoiceRequestCopyWith<$Res> {
  _$CreateInvoiceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songsIds = null,
    Object? userId = null,
    Object? creditCard = null,
  }) {
    return _then(_value.copyWith(
      songsIds: null == songsIds
          ? _value.songsIds
          : songsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateInvoiceRequestImplCopyWith<$Res>
    implements $CreateInvoiceRequestCopyWith<$Res> {
  factory _$$CreateInvoiceRequestImplCopyWith(_$CreateInvoiceRequestImpl value,
          $Res Function(_$CreateInvoiceRequestImpl) then) =
      __$$CreateInvoiceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> songsIds, int userId, String creditCard});
}

/// @nodoc
class __$$CreateInvoiceRequestImplCopyWithImpl<$Res>
    extends _$CreateInvoiceRequestCopyWithImpl<$Res, _$CreateInvoiceRequestImpl>
    implements _$$CreateInvoiceRequestImplCopyWith<$Res> {
  __$$CreateInvoiceRequestImplCopyWithImpl(_$CreateInvoiceRequestImpl _value,
      $Res Function(_$CreateInvoiceRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songsIds = null,
    Object? userId = null,
    Object? creditCard = null,
  }) {
    return _then(_$CreateInvoiceRequestImpl(
      songsIds: null == songsIds
          ? _value._songsIds
          : songsIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateInvoiceRequestImpl implements _CreateInvoiceRequest {
  _$CreateInvoiceRequestImpl(
      {final List<int> songsIds = const [],
      this.userId = 0,
      this.creditCard = ""})
      : _songsIds = songsIds;

  factory _$CreateInvoiceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateInvoiceRequestImplFromJson(json);

  final List<int> _songsIds;
  @override
  @JsonKey()
  List<int> get songsIds {
    if (_songsIds is EqualUnmodifiableListView) return _songsIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songsIds);
  }

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String creditCard;

  @override
  String toString() {
    return 'CreateInvoiceRequest(songsIds: $songsIds, userId: $userId, creditCard: $creditCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInvoiceRequestImpl &&
            const DeepCollectionEquality().equals(other._songsIds, _songsIds) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_songsIds), userId, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInvoiceRequestImplCopyWith<_$CreateInvoiceRequestImpl>
      get copyWith =>
          __$$CreateInvoiceRequestImplCopyWithImpl<_$CreateInvoiceRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateInvoiceRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateInvoiceRequest implements CreateInvoiceRequest {
  factory _CreateInvoiceRequest(
      {final List<int> songsIds,
      final int userId,
      final String creditCard}) = _$CreateInvoiceRequestImpl;

  factory _CreateInvoiceRequest.fromJson(Map<String, dynamic> json) =
      _$CreateInvoiceRequestImpl.fromJson;

  @override
  List<int> get songsIds;
  @override
  int get userId;
  @override
  String get creditCard;
  @override
  @JsonKey(ignore: true)
  _$$CreateInvoiceRequestImplCopyWith<_$CreateInvoiceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
