import 'package:flutter/material.dart';

import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';

class LoginField extends StatefulWidget {
  final String labelText;
  final IconData iconData;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const LoginField({
    super.key,
    required this.labelText,
    required this.iconData,
    required this.controller,
    this.validator,
    this.isPassword = false,
    this.keyboardType,
  });

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: ColorManager.primaryColor,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(color: Colors.black),
        prefixIcon: Icon(
          widget.iconData,
          color: ColorManager.primaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s10),
          borderSide: const BorderSide(
            color: ColorManager.primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s10),
          borderSide: BorderSide(
            width: AppSizeW.s2,
            color: ColorManager.primaryColor,
          ),
        ),
        suffixIcon: widget.isPassword
            ? obscureText
                ? IconButton(
                    icon: const Icon(
                      Icons.visibility,
                      color: ColorManager.primaryColor,
                    ),
                    onPressed: () => setState(() => obscureText = false),
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.visibility_off,
                      color: ColorManager.primaryColor,
                    ),
                    onPressed: () => setState(() => obscureText = true),
                  )
            : null,
      ),
      obscureText: obscureText,
      validator: widget.validator,
    );
  }
}
