import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/depndency_injection.dart';
import '../../../resources/assets_manager.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/routes_manager.dart';
import '../../../resources/values_manager.dart';
import '../blocs/auth_bloc/auth_bloc.dart';
import '../widgets/login_field_widget.dart';
import '../widgets/logo_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late AuthBloc authBloc;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LogoContainer(path: ImageAssets.logo),
                SizedBox(height: AppSizeH.s40),
                LoginField(
                  labelText: 'Email',
                  iconData: Icons.email,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s16),
                LoginField(
                  isPassword: true,
                  labelText: 'Password',
                  iconData: Icons.lock,
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s24),
                BlocConsumer(
                  bloc: authBloc,
                  listener: (context, AuthState state) {
                    state.mapOrNull(
                      success: (value) {
                        Fluttertoast.showToast(
                            msg: value.successMessage,
                            backgroundColor: Colors.green);
                        context.goNamed(RoutesNames.artistRoute);
                      },
                      error: (value) {
                        Fluttertoast.showToast(
                            msg: value.message, backgroundColor: Colors.red);
                      },
                    );
                  },
                  builder: (context, AuthState state) {
                    return state.maybeWhen(
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.primaryColor,
                          ),
                        );
                      },
                      orElse: () {
                        return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              authBloc.add(AuthEvent.login(
                                  email: _emailController.text,
                                  password: _passwordController.text));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: ColorManager.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s8),
                            ),
                            minimumSize: Size(double.infinity, AppSizeH.s50),
                          ),
                          child: const Text('Sign In'),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: AppSizeH.s24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you dont have an account?",
                      style: TextStyle(
                          fontSize: AppSizeSp.s14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: AppSizeW.s4),
                    InkWell(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        context.goNamed(RoutesNames.registerRoute);
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: ColorManager.primaryColor,
                            fontSize: AppSizeSp.s14,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorManager.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
