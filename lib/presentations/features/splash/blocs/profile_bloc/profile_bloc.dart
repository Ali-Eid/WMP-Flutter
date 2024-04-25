import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wmp_project/app/app_preferences.dart';
import 'package:wmp_project/domain/models/profile_model/profile_model.dart';
import 'package:wmp_project/domain/usecases/profile_usecases/profile_usecases.dart';

import '../../../../../app/depndency_injection.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;
  ProfileModel profileModel = ProfileModel();
  bool? isAdmin;
  ProfileBloc({required this.getProfileUseCase}) : super(const _Initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        getProfile: (value) async {
          emit(const ProfileState.loading());
          final failureOrProfile = await getProfileUseCase.execute();
          await failureOrProfile.when((success) async {
            profileModel = success.data;
            if (success.data.email == "admin@gmail.com") {
              await instance<AppPreferences>().setUserRole(true);
              isAdmin = true;
            } else {
              await instance<AppPreferences>().setUserRole(false);
              isAdmin = false;
            }
            emit(ProfileState.loaded(model: success.data));
          }, (error) {
            emit(ProfileState.error(message: error.message));
          });
        },
      );
    });
  }
}
