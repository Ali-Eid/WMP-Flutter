import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wmp_project/presentations/features/splash/blocs/app_bloc/app_bloc.dart';
import 'package:wmp_project/presentations/features/splash/blocs/profile_bloc/profile_bloc.dart';
import 'package:wmp_project/presentations/features/splash/blocs/static_bloc/static_bloc.dart';

import '../presentations/resources/routes_manager.dart';
import '../presentations/resources/theme_manager.dart';
import 'app_preferences.dart';
import 'depndency_injection.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => instance<AppBloc>()),
        BlocProvider(create: (context) => instance<ProfileBloc>()),
        BlocProvider(create: (context) => instance<StaticBloc>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) => ThemeProvider(
          initTheme: instance<AppPreferences>().getTheme(),
          builder: (p0, theme) => MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            title: 'WMP project',
            themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            theme: theme,
            routerConfig: AppRouter.router,
          ),
        ),
      ),
    );
  }
}
