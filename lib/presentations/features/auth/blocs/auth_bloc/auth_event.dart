part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Loging;
  const factory AuthEvent.register({
    required String username,
    required String password,
    required String email,
    required String firstName,
    required String lastName,
  }) = _Register;
}
