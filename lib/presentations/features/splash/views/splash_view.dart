import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/presentations/features/splash/blocs/profile_bloc/profile_bloc.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/routes_manager.dart';
import '../blocs/app_bloc/app_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    context.read<AppBloc>().add(const AppEvent.logged());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener(
        bloc: context.read<AppBloc>(),
        listener: (context, AppState state) {
          state.maybeMap(
            orElse: () {},
            auth: (value) {
              context.goNamed(RoutesNames.loginRoute);
            },
            home: (value) {
              Timer(const Duration(seconds: 1), () {
                context.goNamed(RoutesNames.artistRoute);
              });
            },
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage(ImageAssets.logo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
