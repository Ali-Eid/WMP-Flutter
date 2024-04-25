import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wmp_project/domain/usecases/static_usecases/static_usecase.dart';
import 'package:wmp_project/presentations/features/auth/blocs/auth_bloc/auth_bloc.dart';
import 'package:wmp_project/presentations/features/splash/blocs/app_bloc/app_bloc.dart';

import '../data/newtwok/app_api.dart';
import '../data/newtwok/dio_factory.dart';
import '../data/newtwok/general_dio_interceptor.dart';
import '../data/newtwok/network_info.dart';
import '../data/repository/repository_implementer.dart';
import '../domain/repository/repository.dart';
import '../domain/usecases/artist_usecases/artist_usecases.dart';
import '../domain/usecases/auth_usecases/auth_usecases.dart';
import '../domain/usecases/invoice_usecases/invoice_usecases.dart';
import '../domain/usecases/profile_usecases/profile_usecases.dart';
import '../domain/usecases/song_usecases/song_usecases.dart';
import '../presentations/features/artist/blocs/artist_bloc/artist_bloc.dart';
import '../presentations/features/order/blocs/invoice_bloc/invoic_bloc.dart';
import '../presentations/features/song/blocs/song_bloc/song_bloc.dart';
import '../presentations/features/splash/blocs/profile_bloc/profile_bloc.dart';
import '../presentations/features/splash/blocs/static_bloc/static_bloc.dart';
import 'app_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerFactory<SharedPreferences>(() => sharedPreferences);
  instance.registerFactory<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
  instance.registerFactory<GeneralInterceptor>(() => GeneralInterceptor(
        instance<AppPreferences>(),
      ));

  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(Connectivity()));
  instance.registerLazySingleton<Repository>(() => RepositoryImplementer(
      appServiceClient: instance(), networkInfo: instance()));

  //Usecases---------------

  //Auth
  instance.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(instance<Repository>()));
  instance.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(instance<Repository>()));

  //Artists
  instance.registerLazySingleton<GetArtistsUseCase>(
      () => GetArtistsUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetArtistByIdUseCase>(
      () => GetArtistByIdUseCase(instance<Repository>()));
  instance.registerLazySingleton<CreateArtistUseCase>(
      () => CreateArtistUseCase(instance<Repository>()));
  instance.registerLazySingleton<UpdateArtistUseCase>(
      () => UpdateArtistUseCase(instance<Repository>()));
  instance.registerLazySingleton<DeleteArtistUseCase>(
      () => DeleteArtistUseCase(instance<Repository>()));

  //Songs
  instance.registerLazySingleton<GetSongsUseCase>(
      () => GetSongsUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetSongByIdUseCase>(
      () => GetSongByIdUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetSongsByArtistIdUseCase>(
      () => GetSongsByArtistIdUseCase(instance<Repository>()));
  instance.registerLazySingleton<CreateSongUseCase>(
      () => CreateSongUseCase(instance<Repository>()));
  instance.registerLazySingleton<UpdateSongUseCase>(
      () => UpdateSongUseCase(instance<Repository>()));
  instance.registerLazySingleton<DeleteSongUseCase>(
      () => DeleteSongUseCase(instance<Repository>()));
  //Static
  instance.registerLazySingleton<GetCountriesUseCase>(
      () => GetCountriesUseCase(instance<Repository>()));
  instance.registerLazySingleton<GetSongsTypeUseCase>(
      () => GetSongsTypeUseCase(instance<Repository>()));

//invoice usecases
  instance.registerLazySingleton<CreateInvoiceUseCase>(
      () => CreateInvoiceUseCase(instance<Repository>()));

//Profile usecases
  instance.registerLazySingleton<GetProfileUseCase>(
      () => GetProfileUseCase(instance<Repository>()));

  //-------------------------

  //Blocs

  instance.registerFactory<AppBloc>(
      () => AppBloc(appPreferences: instance<AppPreferences>()));
  instance.registerFactory<AuthBloc>(() => AuthBloc(
      loginUseCase: instance<LoginUseCase>(),
      registerUseCase: instance<RegisterUseCase>()));

  instance.registerFactory<ArtistBloc>(() => ArtistBloc(
      getArtistsUseCase: instance<GetArtistsUseCase>(),
      createArtistUseCase: instance<CreateArtistUseCase>()));
  instance.registerFactory<SongBloc>(() => SongBloc(
      createSongUseCase: instance<CreateSongUseCase>(),
      getSongsUseCase: instance<GetSongsUseCase>(),
      getSongsByArtistIdUseCase: instance<GetSongsByArtistIdUseCase>()));
  instance.registerFactory<StaticBloc>(() => StaticBloc(
      getCountriesUseCase: instance<GetCountriesUseCase>(),
      getSongsTypeUseCase: instance<GetSongsTypeUseCase>()));
  instance.registerFactory<ProfileBloc>(
      () => ProfileBloc(getProfileUseCase: instance<GetProfileUseCase>()));
  instance.registerFactory<InvoicBloc>(
      () => InvoicBloc(createInvoiceUseCase: instance<CreateInvoiceUseCase>()));
}
