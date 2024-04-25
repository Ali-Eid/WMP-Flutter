import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/presentations/features/main/widgets/custom_drawer.dart';
import 'package:wmp_project/presentations/resources/routes_manager.dart';
import 'package:wmp_project/presentations/resources/values_manager.dart';

import '../../../resources/color_manager.dart';

class MainView extends StatefulWidget {
  final Widget child;

  const MainView({super.key, required this.child});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Music Store",
          style: TextStyle(
              color: ColorManager.primaryColor,
              fontSize: AppSizeSp.s18,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            padding: EdgeInsets.zero,
            highlightColor: Colors.transparent,
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            icon: const Center(
                child: Icon(
              Icons.menu,
              color: ColorManager.primaryColor,
            ))),
      ),
      drawer: const CustomDrawerWidget(),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        showSelectedLabels: true,
        selectedIconTheme:
            const IconThemeData(color: ColorManager.primaryColor),
        selectedLabelStyle: const TextStyle(
            color: ColorManager.primaryColor, fontWeight: FontWeight.w500),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Artist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Songs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorManager.primaryColor,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          switch (value) {
            case 0:
              context.goNamed(RoutesNames.artistRoute);
              break;
            case 1:
              context.goNamed(RoutesNames.songRoute);
              break;
            default:
              context.goNamed(RoutesNames.artistRoute);
          }
        },
      ),
    );
  }
}
