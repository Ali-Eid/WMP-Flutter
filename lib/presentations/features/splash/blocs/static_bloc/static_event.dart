part of 'static_bloc.dart';

@freezed
class StaticEvent with _$StaticEvent {
  const factory StaticEvent.getCountries() = _GetCountries;
  const factory StaticEvent.getSongsTypes() = _GetSongsTypes;
}
