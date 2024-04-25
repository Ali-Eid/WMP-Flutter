import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../app/app_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppPreferences appPreferences;
  bool isAdmin = false;
  AppBloc({required this.appPreferences}) : super(const _Initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        logged: (value) async {
          emit(const AppState.loading());
          var token = await appPreferences.getUserToken();
          if (token.isNotEmpty) {
            isAdmin = await appPreferences.getUserRole();
            emit(const AppState.home());
          } else {
            emit(const AppState.auth());
          }
        },
        logout: (value) async {
          emit(const AppState.loading());
          await appPreferences.setUserToken("");
          await appPreferences.setUserRole(false);
          emit(const AppState.auth());
        },
      );
    });
  }
}
