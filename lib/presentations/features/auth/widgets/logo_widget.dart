import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';

class LogoContainer extends StatelessWidget {
  final String path;
  final double? width; // Replace with your logo widget or Image.asset
  final double? height; // Replace with your logo widget or Image.asset

  const LogoContainer({super.key, required this.path, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizeR.s20),
        boxShadow: [
          BoxShadow(
            color: ColorManager.primaryColor,
            blurRadius: AppSizeR.s10,
            spreadRadius: AppSizeR.s1,
            offset: const Offset(0.0, 1.0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizeW.s20),
        child: Image.asset(
          path,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
