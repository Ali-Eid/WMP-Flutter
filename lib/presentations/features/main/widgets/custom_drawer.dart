import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/app/app_preferences.dart';
import 'package:wmp_project/presentations/features/splash/blocs/app_bloc/app_bloc.dart';
import 'package:wmp_project/presentations/resources/assets_manager.dart';

import '../../../../app/depndency_injection.dart';
import '../../../resources/routes_manager.dart';
import '../../../resources/values_manager.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: context.read<AppBloc>(),
      listener: (context, AppState state) {
        state.mapOrNull(
          auth: (value) {
            context.goNamed(RoutesNames.loginRoute);
          },
        );
      },
      child: Drawer(
          width: AppSizeW.s187,
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.all(AppSizeSp.s24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DrawerItemWidget(
                    icon: const Icon(Icons.exit_to_app),
                    label: "Logout",
                    onTap: () async {
                      context.read<AppBloc>().add(const AppEvent.logout());
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class DrawerItemWidget extends StatefulWidget {
  final String label;
  final EdgeInsets? padding;
  final Widget icon;
  final Size? iconSize;
  final Function() onTap;

  const DrawerItemWidget(
      {super.key,
      required this.label,
      this.padding,
      required this.icon,
      required this.onTap,
      this.iconSize});

  @override
  State<DrawerItemWidget> createState() => _DrawerItemWidgetState();
}

class _DrawerItemWidgetState extends State<DrawerItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.only(bottom: AppSizeH.s23),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.icon,
            SizedBox(
              width: AppSizeW.s11,
            ),
            Text(
              widget.label,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: AppSizeSp.s16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
