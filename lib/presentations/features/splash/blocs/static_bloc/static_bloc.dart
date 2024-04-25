import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wmp_project/domain/usecases/static_usecases/static_usecase.dart';

import '../../../../../domain/models/static_model/static_model.dart';

part 'static_event.dart';
part 'static_state.dart';
part 'static_bloc.freezed.dart';

class StaticBloc extends Bloc<StaticEvent, StaticState> {
  final GetCountriesUseCase getCountriesUseCase;
  final GetSongsTypeUseCase getSongsTypeUseCase;
  StaticBloc({
    required this.getCountriesUseCase,
    required this.getSongsTypeUseCase,
  }) : super(const _Initial()) {
    on<StaticEvent>((event, emit) async {
      await event.map(
        getCountries: (value) async {
          emit(const StaticState.loading());
          final failureOrSuccess = await getCountriesUseCase.execute();
          failureOrSuccess.when((success) {
            emit(StaticState.loaded(static: success.data));
          }, (error) {
            emit(StaticState.error(message: error.message));
          });
        },
        getSongsTypes: (value) async {
          emit(const StaticState.loading());
          final failureOrSuccess = await getSongsTypeUseCase.execute();
          failureOrSuccess.when((success) {
            emit(StaticState.loaded(static: success.data));
          }, (error) {
            emit(StaticState.error(message: error.message));
          });
        },
      );
    });
  }
}
