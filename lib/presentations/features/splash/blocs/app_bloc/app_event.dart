part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.logged() = _Logged;
  const factory AppEvent.logout() = _LogOut;
}
