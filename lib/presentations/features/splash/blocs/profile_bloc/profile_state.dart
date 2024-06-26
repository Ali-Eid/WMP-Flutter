part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({required ProfileModel model}) = _Loaded;
  const factory ProfileState.error({required String message}) = _Error;
}
