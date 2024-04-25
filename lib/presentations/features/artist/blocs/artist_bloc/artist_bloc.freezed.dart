// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArtists,
    required TResult Function(String atristName) searchArtist,
    required TResult Function(CreateRequestArtistModel createRequestArtistModel)
        addArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArtists,
    TResult? Function(String atristName)? searchArtist,
    TResult? Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArtists,
    TResult Function(String atristName)? searchArtist,
    TResult Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArtists value) getArtists,
    required TResult Function(_SearchArtists value) searchArtist,
    required TResult Function(_AddArtist value) addArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArtists value)? getArtists,
    TResult? Function(_SearchArtists value)? searchArtist,
    TResult? Function(_AddArtist value)? addArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArtists value)? getArtists,
    TResult Function(_SearchArtists value)? searchArtist,
    TResult Function(_AddArtist value)? addArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistEventCopyWith<$Res> {
  factory $ArtistEventCopyWith(
          ArtistEvent value, $Res Function(ArtistEvent) then) =
      _$ArtistEventCopyWithImpl<$Res, ArtistEvent>;
}

/// @nodoc
class _$ArtistEventCopyWithImpl<$Res, $Val extends ArtistEvent>
    implements $ArtistEventCopyWith<$Res> {
  _$ArtistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArtistsImplCopyWith<$Res> {
  factory _$$GetArtistsImplCopyWith(
          _$GetArtistsImpl value, $Res Function(_$GetArtistsImpl) then) =
      __$$GetArtistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetArtistsImplCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res, _$GetArtistsImpl>
    implements _$$GetArtistsImplCopyWith<$Res> {
  __$$GetArtistsImplCopyWithImpl(
      _$GetArtistsImpl _value, $Res Function(_$GetArtistsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetArtistsImpl implements _GetArtists {
  const _$GetArtistsImpl();

  @override
  String toString() {
    return 'ArtistEvent.getArtists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetArtistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArtists,
    required TResult Function(String atristName) searchArtist,
    required TResult Function(CreateRequestArtistModel createRequestArtistModel)
        addArtist,
  }) {
    return getArtists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArtists,
    TResult? Function(String atristName)? searchArtist,
    TResult? Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
  }) {
    return getArtists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArtists,
    TResult Function(String atristName)? searchArtist,
    TResult Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArtists value) getArtists,
    required TResult Function(_SearchArtists value) searchArtist,
    required TResult Function(_AddArtist value) addArtist,
  }) {
    return getArtists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArtists value)? getArtists,
    TResult? Function(_SearchArtists value)? searchArtist,
    TResult? Function(_AddArtist value)? addArtist,
  }) {
    return getArtists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArtists value)? getArtists,
    TResult Function(_SearchArtists value)? searchArtist,
    TResult Function(_AddArtist value)? addArtist,
    required TResult orElse(),
  }) {
    if (getArtists != null) {
      return getArtists(this);
    }
    return orElse();
  }
}

abstract class _GetArtists implements ArtistEvent {
  const factory _GetArtists() = _$GetArtistsImpl;
}

/// @nodoc
abstract class _$$SearchArtistsImplCopyWith<$Res> {
  factory _$$SearchArtistsImplCopyWith(
          _$SearchArtistsImpl value, $Res Function(_$SearchArtistsImpl) then) =
      __$$SearchArtistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String atristName});
}

/// @nodoc
class __$$SearchArtistsImplCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res, _$SearchArtistsImpl>
    implements _$$SearchArtistsImplCopyWith<$Res> {
  __$$SearchArtistsImplCopyWithImpl(
      _$SearchArtistsImpl _value, $Res Function(_$SearchArtistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? atristName = null,
  }) {
    return _then(_$SearchArtistsImpl(
      atristName: null == atristName
          ? _value.atristName
          : atristName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchArtistsImpl implements _SearchArtists {
  const _$SearchArtistsImpl({required this.atristName});

  @override
  final String atristName;

  @override
  String toString() {
    return 'ArtistEvent.searchArtist(atristName: $atristName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchArtistsImpl &&
            (identical(other.atristName, atristName) ||
                other.atristName == atristName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, atristName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchArtistsImplCopyWith<_$SearchArtistsImpl> get copyWith =>
      __$$SearchArtistsImplCopyWithImpl<_$SearchArtistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArtists,
    required TResult Function(String atristName) searchArtist,
    required TResult Function(CreateRequestArtistModel createRequestArtistModel)
        addArtist,
  }) {
    return searchArtist(atristName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArtists,
    TResult? Function(String atristName)? searchArtist,
    TResult? Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
  }) {
    return searchArtist?.call(atristName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArtists,
    TResult Function(String atristName)? searchArtist,
    TResult Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
    required TResult orElse(),
  }) {
    if (searchArtist != null) {
      return searchArtist(atristName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArtists value) getArtists,
    required TResult Function(_SearchArtists value) searchArtist,
    required TResult Function(_AddArtist value) addArtist,
  }) {
    return searchArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArtists value)? getArtists,
    TResult? Function(_SearchArtists value)? searchArtist,
    TResult? Function(_AddArtist value)? addArtist,
  }) {
    return searchArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArtists value)? getArtists,
    TResult Function(_SearchArtists value)? searchArtist,
    TResult Function(_AddArtist value)? addArtist,
    required TResult orElse(),
  }) {
    if (searchArtist != null) {
      return searchArtist(this);
    }
    return orElse();
  }
}

abstract class _SearchArtists implements ArtistEvent {
  const factory _SearchArtists({required final String atristName}) =
      _$SearchArtistsImpl;

  String get atristName;
  @JsonKey(ignore: true)
  _$$SearchArtistsImplCopyWith<_$SearchArtistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddArtistImplCopyWith<$Res> {
  factory _$$AddArtistImplCopyWith(
          _$AddArtistImpl value, $Res Function(_$AddArtistImpl) then) =
      __$$AddArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateRequestArtistModel createRequestArtistModel});

  $CreateRequestArtistModelCopyWith<$Res> get createRequestArtistModel;
}

/// @nodoc
class __$$AddArtistImplCopyWithImpl<$Res>
    extends _$ArtistEventCopyWithImpl<$Res, _$AddArtistImpl>
    implements _$$AddArtistImplCopyWith<$Res> {
  __$$AddArtistImplCopyWithImpl(
      _$AddArtistImpl _value, $Res Function(_$AddArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createRequestArtistModel = null,
  }) {
    return _then(_$AddArtistImpl(
      createRequestArtistModel: null == createRequestArtistModel
          ? _value.createRequestArtistModel
          : createRequestArtistModel // ignore: cast_nullable_to_non_nullable
              as CreateRequestArtistModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateRequestArtistModelCopyWith<$Res> get createRequestArtistModel {
    return $CreateRequestArtistModelCopyWith<$Res>(
        _value.createRequestArtistModel, (value) {
      return _then(_value.copyWith(createRequestArtistModel: value));
    });
  }
}

/// @nodoc

class _$AddArtistImpl implements _AddArtist {
  const _$AddArtistImpl({required this.createRequestArtistModel});

  @override
  final CreateRequestArtistModel createRequestArtistModel;

  @override
  String toString() {
    return 'ArtistEvent.addArtist(createRequestArtistModel: $createRequestArtistModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArtistImpl &&
            (identical(
                    other.createRequestArtistModel, createRequestArtistModel) ||
                other.createRequestArtistModel == createRequestArtistModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createRequestArtistModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArtistImplCopyWith<_$AddArtistImpl> get copyWith =>
      __$$AddArtistImplCopyWithImpl<_$AddArtistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getArtists,
    required TResult Function(String atristName) searchArtist,
    required TResult Function(CreateRequestArtistModel createRequestArtistModel)
        addArtist,
  }) {
    return addArtist(createRequestArtistModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getArtists,
    TResult? Function(String atristName)? searchArtist,
    TResult? Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
  }) {
    return addArtist?.call(createRequestArtistModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getArtists,
    TResult Function(String atristName)? searchArtist,
    TResult Function(CreateRequestArtistModel createRequestArtistModel)?
        addArtist,
    required TResult orElse(),
  }) {
    if (addArtist != null) {
      return addArtist(createRequestArtistModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetArtists value) getArtists,
    required TResult Function(_SearchArtists value) searchArtist,
    required TResult Function(_AddArtist value) addArtist,
  }) {
    return addArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetArtists value)? getArtists,
    TResult? Function(_SearchArtists value)? searchArtist,
    TResult? Function(_AddArtist value)? addArtist,
  }) {
    return addArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetArtists value)? getArtists,
    TResult Function(_SearchArtists value)? searchArtist,
    TResult Function(_AddArtist value)? addArtist,
    required TResult orElse(),
  }) {
    if (addArtist != null) {
      return addArtist(this);
    }
    return orElse();
  }
}

abstract class _AddArtist implements ArtistEvent {
  const factory _AddArtist(
          {required final CreateRequestArtistModel createRequestArtistModel}) =
      _$AddArtistImpl;

  CreateRequestArtistModel get createRequestArtistModel;
  @JsonKey(ignore: true)
  _$$AddArtistImplCopyWith<_$AddArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStateCopyWith<$Res> {
  factory $ArtistStateCopyWith(
          ArtistState value, $Res Function(ArtistState) then) =
      _$ArtistStateCopyWithImpl<$Res, ArtistState>;
}

/// @nodoc
class _$ArtistStateCopyWithImpl<$Res, $Val extends ArtistState>
    implements $ArtistStateCopyWith<$Res> {
  _$ArtistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ArtistState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtistState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ArtistState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArtistModel> artists});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
  }) {
    return _then(_$LoadedImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<ArtistModel> artists})
      : _artists = artists;

  final List<ArtistModel> _artists;
  @override
  List<ArtistModel> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'ArtistState.loaded(artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) {
    return loaded(artists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(artists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(artists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArtistState {
  const factory _Loaded({required final List<ArtistModel> artists}) =
      _$LoadedImpl;

  List<ArtistModel> get artists;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedArtistImplCopyWith<$Res> {
  factory _$$AddedArtistImplCopyWith(
          _$AddedArtistImpl value, $Res Function(_$AddedArtistImpl) then) =
      __$$AddedArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponseModel<dynamic> success});

  $BaseResponseModelCopyWith<dynamic, $Res> get success;
}

/// @nodoc
class __$$AddedArtistImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$AddedArtistImpl>
    implements _$$AddedArtistImplCopyWith<$Res> {
  __$$AddedArtistImplCopyWithImpl(
      _$AddedArtistImpl _value, $Res Function(_$AddedArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$AddedArtistImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as BaseResponseModel<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseResponseModelCopyWith<dynamic, $Res> get success {
    return $BaseResponseModelCopyWith<dynamic, $Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$AddedArtistImpl implements _AddedArtist {
  const _$AddedArtistImpl({required this.success});

  @override
  final BaseResponseModel<dynamic> success;

  @override
  String toString() {
    return 'ArtistState.addArtist(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedArtistImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedArtistImplCopyWith<_$AddedArtistImpl> get copyWith =>
      __$$AddedArtistImplCopyWithImpl<_$AddedArtistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) {
    return addArtist(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) {
    return addArtist?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addArtist != null) {
      return addArtist(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) {
    return addArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) {
    return addArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addArtist != null) {
      return addArtist(this);
    }
    return orElse();
  }
}

abstract class _AddedArtist implements ArtistState {
  const factory _AddedArtist(
      {required final BaseResponseModel<dynamic> success}) = _$AddedArtistImpl;

  BaseResponseModel<dynamic> get success;
  @JsonKey(ignore: true)
  _$$AddedArtistImplCopyWith<_$AddedArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ArtistStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ArtistState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArtistModel> artists) loaded,
    required TResult Function(BaseResponseModel<dynamic> success) addArtist,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArtistModel> artists)? loaded,
    TResult? Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArtistModel> artists)? loaded,
    TResult Function(BaseResponseModel<dynamic> success)? addArtist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_AddedArtist value) addArtist,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_AddedArtist value)? addArtist,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_AddedArtist value)? addArtist,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
