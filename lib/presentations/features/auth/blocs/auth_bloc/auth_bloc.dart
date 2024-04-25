import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wmp_project/domain/models/auth_model/request/login_request_model.dart';
import 'package:wmp_project/domain/models/auth_model/request/register/register_request_model.dart';
import '../../../../../app/app_preferences.dart';
import '../../../../../app/depndency_injection.dart';
import '../../../../../domain/usecases/auth_usecases/auth_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  AuthBloc({required this.loginUseCase, required this.registerUseCase})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await loginUseCase.execute(
              LoginRequestModel(email: value.email, password: value.password));
          await failureOrSuccess.when((success) async {
            await instance<AppPreferences>().setUserToken(success.data.token);
            await instance<AppPreferences>().setUserRole(success.data.isAdmin);
            emit(const AuthState.success(successMessage: "Login Successfully"));
          }, (error) {
            emit(AuthState.error(message: error.message));
          });
        },
        register: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await registerUseCase.execute(
              RegisterRequestModel(
                  username: value.username,
                  password: value.password,
                  email: value.email,
                  firstName: value.firstName,
                  lastName: value.lastName));
          await failureOrSuccess.when((success) async {
            await instance<AppPreferences>().setUserToken(success.data.token);
            await instance<AppPreferences>().setUserRole(success.data.isAdmin);
            emit(const AuthState.success(
                successMessage: "Register Successfully"));
          }, (error) {
            emit(AuthState.error(message: error.message));
          });
        },
      );
    });
  }
}
