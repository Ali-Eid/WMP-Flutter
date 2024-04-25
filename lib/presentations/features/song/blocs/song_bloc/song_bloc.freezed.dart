// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int artistId) songsByArtist,
    required TResult Function() getSongs,
    required TResult Function(String songTitle) searchSongs,
    required TResult Function(CreateSongRequestModel createSongRequestModel)
        addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int artistId)? songsByArtist,
    TResult? Function()? getSongs,
    TResult? Function(String songTitle)? searchSongs,
    TResult? Function(CreateSongRequestModel createSongRequestModel)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int artistId)? songsByArtist,
    TResult Function()? getSongs,
    TResult Function(String songTitle)? searchSongs,
    TResult Function(CreateSongRequestModel createSongRequestModel)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongsByArtist value) songsByArtist,
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SearchSongs value) searchSongs,
    required TResult Function(_AddSongs value) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongsByArtist value)? songsByArtist,
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SearchSongs value)? searchSongs,
    TResult? Function(_AddSongs value)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongsByArtist value)? songsByArtist,
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SearchSongs value)? searchSongs,
    TResult Function(_AddSongs value)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEventCopyWith<$Res> {
  factory $SongEventCopyWith(SongEvent value, $Res Function(SongEvent) then) =
      _$SongEventCopyWithImpl<$Res, SongEvent>;
}

/// @nodoc
class _$SongEventCopyWithImpl<$Res, $Val extends SongEvent>
    implements $SongEventCopyWith<$Res> {
  _$SongEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSongsByArtistImplCopyWith<$Res> {
  factory _$$GetSongsByArtistImplCopyWith(_$GetSongsByArtistImpl value,
          $Res Function(_$GetSongsByArtistImpl) then) =
      __$$GetSongsByArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int artistId});
}

/// @nodoc
class __$$GetSongsByArtistImplCopyWithImpl<$Res>
    extends _$SongEventCopyWithImpl<$Res, _$GetSongsByArtistImpl>
    implements _$$GetSongsByArtistImplCopyWith<$Res> {
  __$$GetSongsByArtistImplCopyWithImpl(_$GetSongsByArtistImpl _value,
      $Res Function(_$GetSongsByArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
  }) {
    return _then(_$GetSongsByArtistImpl(
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSongsByArtistImpl implements _GetSongsByArtist {
  const _$GetSongsByArtistImpl({required this.artistId});

  @override
  final int artistId;

  @override
  String toString() {
    return 'SongEvent.songsByArtist(artistId: $artistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSongsByArtistImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSongsByArtistImplCopyWith<_$GetSongsByArtistImpl> get copyWith =>
      __$$GetSongsByArtistImplCopyWithImpl<_$GetSongsByArtistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int artistId) songsByArtist,
    required TResult Function() getSongs,
    required TResult Function(String songTitle) searchSongs,
    required TResult Function(CreateSongRequestModel createSongRequestModel)
        addSong,
  }) {
    return songsByArtist(artistId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int artistId)? songsByArtist,
    TResult? Function()? getSongs,
    TResult? Function(String songTitle)? searchSongs,
    TResult? Function(CreateSongRequestModel createSongRequestModel)? addSong,
  }) {
    return songsByArtist?.call(artistId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int artistId)? songsByArtist,
    TResult Function()? getSongs,
    TResult Function(String songTitle)? searchSongs,
    TResult Function(CreateSongRequestModel createSongRequestModel)? addSong,
    required TResult orElse(),
  }) {
    if (songsByArtist != null) {
      return songsByArtist(artistId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongsByArtist value) songsByArtist,
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SearchSongs value) searchSongs,
    required TResult Function(_AddSongs value) addSong,
  }) {
    return songsByArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongsByArtist value)? songsByArtist,
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SearchSongs value)? searchSongs,
    TResult? Function(_AddSongs value)? addSong,
  }) {
    return songsByArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongsByArtist value)? songsByArtist,
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SearchSongs value)? searchSongs,
    TResult Function(_AddSongs value)? addSong,
    required TResult orElse(),
  }) {
    if (songsByArtist != null) {
      return songsByArtist(this);
    }
    return orElse();
  }
}

abstract class _GetSongsByArtist implements SongEvent {
  const factory _GetSongsByArtist({required final int artistId}) =
      _$GetSongsByArtistImpl;

  int get artistId;
  @JsonKey(ignore: true)
  _$$GetSongsByArtistImplCopyWith<_$GetSongsByArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSongsImplCopyWith<$Res> {
  factory _$$GetSongsImplCopyWith(
          _$GetSongsImpl value, $Res Function(_$GetSongsImpl) then) =
      __$$GetSongsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSongsImplCopyWithImpl<$Res>
    extends _$SongEventCopyWithImpl<$Res, _$GetSongsImpl>
    implements _$$GetSongsImplCopyWith<$Res> {
  __$$GetSongsImplCopyWithImpl(
      _$GetSongsImpl _value, $Res Function(_$GetSongsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSongsImpl implements _GetSongs {
  const _$GetSongsImpl();

  @override
  String toString() {
    return 'SongEvent.getSongs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSongsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int artistId) songsByArtist,
    required TResult Function() getSongs,
    required TResult Function(String songTitle) searchSongs,
    required TResult Function(CreateSongRequestModel createSongRequestModel)
        addSong,
  }) {
    return getSongs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int artistId)? songsByArtist,
    TResult? Function()? getSongs,
    TResult? Function(String songTitle)? searchSongs,
    TResult? Function(CreateSongRequestModel createSongRequestModel)? addSong,
  }) {
    return getSongs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int artistId)? songsByArtist,
    TResult Function()? getSongs,
    TResult Function(String songTitle)? searchSongs,
    TResult Function(CreateSongRequestModel createSongRequestModel)? addSong,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongsByArtist value) songsByArtist,
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SearchSongs value) searchSongs,
    required TResult Function(_AddSongs value) addSong,
  }) {
    return getSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongsByArtist value)? songsByArtist,
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SearchSongs value)? searchSongs,
    TResult? Function(_AddSongs value)? addSong,
  }) {
    return getSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongsByArtist value)? songsByArtist,
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SearchSongs value)? searchSongs,
    TResult Function(_AddSongs value)? addSong,
    required TResult orElse(),
  }) {
    if (getSongs != null) {
      return getSongs(this);
    }
    return orElse();
  }
}

abstract class _GetSongs implements SongEvent {
  const factory _GetSongs() = _$GetSongsImpl;
}

/// @nodoc
abstract class _$$SearchSongsImplCopyWith<$Res> {
  factory _$$SearchSongsImplCopyWith(
          _$SearchSongsImpl value, $Res Function(_$SearchSongsImpl) then) =
      __$$SearchSongsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String songTitle});
}

/// @nodoc
class __$$SearchSongsImplCopyWithImpl<$Res>
    extends _$SongEventCopyWithImpl<$Res, _$SearchSongsImpl>
    implements _$$SearchSongsImplCopyWith<$Res> {
  __$$SearchSongsImplCopyWithImpl(
      _$SearchSongsImpl _value, $Res Function(_$SearchSongsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songTitle = null,
  }) {
    return _then(_$SearchSongsImpl(
      songTitle: null == songTitle
          ? _value.songTitle
          : songTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSongsImpl implements _SearchSongs {
  const _$SearchSongsImpl({required this.songTitle});

  @override
  final String songTitle;

  @override
  String toString() {
    return 'SongEvent.searchSongs(songTitle: $songTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSongsImpl &&
            (identical(other.songTitle, songTitle) ||
                other.songTitle == songTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, songTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSongsImplCopyWith<_$SearchSongsImpl> get copyWith =>
      __$$SearchSongsImplCopyWithImpl<_$SearchSongsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int artistId) songsByArtist,
    required TResult Function() getSongs,
    required TResult Function(String songTitle) searchSongs,
    required TResult Function(CreateSongRequestModel createSongRequestModel)
        addSong,
  }) {
    return searchSongs(songTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int artistId)? songsByArtist,
    TResult? Function()? getSongs,
    TResult? Function(String songTitle)? searchSongs,
    TResult? Function(CreateSongRequestModel createSongRequestModel)? addSong,
  }) {
    return searchSongs?.call(songTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int artistId)? songsByArtist,
    TResult Function()? getSongs,
    TResult Function(String songTitle)? searchSongs,
    TResult Function(CreateSongRequestModel createSongRequestModel)? addSong,
    required TResult orElse(),
  }) {
    if (searchSongs != null) {
      return searchSongs(songTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongsByArtist value) songsByArtist,
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SearchSongs value) searchSongs,
    required TResult Function(_AddSongs value) addSong,
  }) {
    return searchSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongsByArtist value)? songsByArtist,
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SearchSongs value)? searchSongs,
    TResult? Function(_AddSongs value)? addSong,
  }) {
    return searchSongs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongsByArtist value)? songsByArtist,
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SearchSongs value)? searchSongs,
    TResult Function(_AddSongs value)? addSong,
    required TResult orElse(),
  }) {
    if (searchSongs != null) {
      return searchSongs(this);
    }
    return orElse();
  }
}

abstract class _SearchSongs implements SongEvent {
  const factory _SearchSongs({required final String songTitle}) =
      _$SearchSongsImpl;

  String get songTitle;
  @JsonKey(ignore: true)
  _$$SearchSongsImplCopyWith<_$SearchSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSongsImplCopyWith<$Res> {
  factory _$$AddSongsImplCopyWith(
          _$AddSongsImpl value, $Res Function(_$AddSongsImpl) then) =
      __$$AddSongsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateSongRequestModel createSongRequestModel});

  $CreateSongRequestModelCopyWith<$Res> get createSongRequestModel;
}

/// @nodoc
class __$$AddSongsImplCopyWithImpl<$Res>
    extends _$SongEventCopyWithImpl<$Res, _$AddSongsImpl>
    implements _$$AddSongsImplCopyWith<$Res> {
  __$$AddSongsImplCopyWithImpl(
      _$AddSongsImpl _value, $Res Function(_$AddSongsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createSongRequestModel = null,
  }) {
    return _then(_$AddSongsImpl(
      createSongRequestModel: null == createSongRequestModel
          ? _value.createSongRequestModel
          : createSongRequestModel // ignore: cast_nullable_to_non_nullable
              as CreateSongRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateSongRequestModelCopyWith<$Res> get createSongRequestModel {
    return $CreateSongRequestModelCopyWith<$Res>(_value.createSongRequestModel,
        (value) {
      return _then(_value.copyWith(createSongRequestModel: value));
    });
  }
}

/// @nodoc

class _$AddSongsImpl implements _AddSongs {
  const _$AddSongsImpl({required this.createSongRequestModel});

  @override
  final CreateSongRequestModel createSongRequestModel;

  @override
  String toString() {
    return 'SongEvent.addSong(createSongRequestModel: $createSongRequestModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSongsImpl &&
            (identical(other.createSongRequestModel, createSongRequestModel) ||
                other.createSongRequestModel == createSongRequestModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createSongRequestModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSongsImplCopyWith<_$AddSongsImpl> get copyWith =>
      __$$AddSongsImplCopyWithImpl<_$AddSongsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int artistId) songsByArtist,
    required TResult Function() getSongs,
    required TResult Function(String songTitle) searchSongs,
    required TResult Function(CreateSongRequestModel createSongRequestModel)
        addSong,
  }) {
    return addSong(createSongRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int artistId)? songsByArtist,
    TResult? Function()? getSongs,
    TResult? Function(String songTitle)? searchSongs,
    TResult? Function(CreateSongRequestModel createSongRequestModel)? addSong,
  }) {
    return addSong?.call(createSongRequestModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int artistId)? songsByArtist,
    TResult Function()? getSongs,
    TResult Function(String songTitle)? searchSongs,
    TResult Function(CreateSongRequestModel createSongRequestModel)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(createSongRequestModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSongsByArtist value) songsByArtist,
    required TResult Function(_GetSongs value) getSongs,
    required TResult Function(_SearchSongs value) searchSongs,
    required TResult Function(_AddSongs value) addSong,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSongsByArtist value)? songsByArtist,
    TResult? Function(_GetSongs value)? getSongs,
    TResult? Function(_SearchSongs value)? searchSongs,
    TResult? Function(_AddSongs value)? addSong,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSongsByArtist value)? songsByArtist,
    TResult Function(_GetSongs value)? getSongs,
    TResult Function(_SearchSongs value)? searchSongs,
    TResult Function(_AddSongs value)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(this);
    }
    return orElse();
  }
}

abstract class _AddSongs implements SongEvent {
  const factory _AddSongs(
          {required final CreateSongRequestModel createSongRequestModel}) =
      _$AddSongsImpl;

  CreateSongRequestModel get createSongRequestModel;
  @JsonKey(ignore: true)
  _$$AddSongsImplCopyWith<_$AddSongsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SongState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongStateCopyWith<$Res> {
  factory $SongStateCopyWith(SongState value, $Res Function(SongState) then) =
      _$SongStateCopyWithImpl<$Res, SongState>;
}

/// @nodoc
class _$SongStateCopyWithImpl<$Res, $Val extends SongState>
    implements $SongStateCopyWith<$Res> {
  _$SongStateCopyWithImpl(this._value, this._then);

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
    extends _$SongStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SongState.initial()';
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
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
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
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SongState {
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
    extends _$SongStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'SongState.loading()';
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
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
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
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SongState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SongModel> songs});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songs = null,
  }) {
    return _then(_$LoadedImpl(
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<SongModel> songs}) : _songs = songs;

  final List<SongModel> _songs;
  @override
  List<SongModel> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  String toString() {
    return 'SongState.loaded(songs: $songs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._songs, _songs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_songs));

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
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) {
    return loaded(songs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) {
    return loaded?.call(songs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(songs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SongState {
  const factory _Loaded({required final List<SongModel> songs}) = _$LoadedImpl;

  List<SongModel> get songs;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$SongStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'SongState.error(message: $message)';
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
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
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
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SongState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedSongImplCopyWith<$Res> {
  factory _$$AddedSongImplCopyWith(
          _$AddedSongImpl value, $Res Function(_$AddedSongImpl) then) =
      __$$AddedSongImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BaseResponseModel<dynamic> success});

  $BaseResponseModelCopyWith<dynamic, $Res> get success;
}

/// @nodoc
class __$$AddedSongImplCopyWithImpl<$Res>
    extends _$SongStateCopyWithImpl<$Res, _$AddedSongImpl>
    implements _$$AddedSongImplCopyWith<$Res> {
  __$$AddedSongImplCopyWithImpl(
      _$AddedSongImpl _value, $Res Function(_$AddedSongImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$AddedSongImpl(
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

class _$AddedSongImpl implements _AddedSong {
  const _$AddedSongImpl({required this.success});

  @override
  final BaseResponseModel<dynamic> success;

  @override
  String toString() {
    return 'SongState.addSong(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedSongImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedSongImplCopyWith<_$AddedSongImpl> get copyWith =>
      __$$AddedSongImplCopyWithImpl<_$AddedSongImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SongModel> songs) loaded,
    required TResult Function(String message) error,
    required TResult Function(BaseResponseModel<dynamic> success) addSong,
  }) {
    return addSong(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SongModel> songs)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(BaseResponseModel<dynamic> success)? addSong,
  }) {
    return addSong?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SongModel> songs)? loaded,
    TResult Function(String message)? error,
    TResult Function(BaseResponseModel<dynamic> success)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_AddedSong value) addSong,
  }) {
    return addSong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_AddedSong value)? addSong,
  }) {
    return addSong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_AddedSong value)? addSong,
    required TResult orElse(),
  }) {
    if (addSong != null) {
      return addSong(this);
    }
    return orElse();
  }
}

abstract class _AddedSong implements SongState {
  const factory _AddedSong(
      {required final BaseResponseModel<dynamic> success}) = _$AddedSongImpl;

  BaseResponseModel<dynamic> get success;
  @JsonKey(ignore: true)
  _$$AddedSongImplCopyWith<_$AddedSongImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
