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

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late AuthBloc authBloc;

  final _formKey = GlobalKey<FormState>();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _addressController = TextEditingController();
  @override
  void initState() {
    authBloc = instance<AuthBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LogoContainer(
                  path: ImageAssets.logo,
                  height: AppSizeH.s120,
                ),
                SizedBox(height: AppSizeH.s20),
                Row(
                  children: [
                    Expanded(
                      child: LoginField(
                        labelText: 'Fname',
                        iconData: Icons.person,
                        controller: _fnameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your fname.';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(width: AppSizeH.s6),
                    Expanded(
                      child: LoginField(
                        labelText: 'Lname',
                        iconData: Icons.person,
                        controller: _lnameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your lname.';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizeH.s20),
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
                SizedBox(height: AppSizeH.s20),
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
                SizedBox(height: AppSizeH.s20),
                LoginField(
                  labelText: 'Username',
                  iconData: Icons.person,
                  controller: _usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s20),
                LoginField(
                  labelText: 'Address',
                  iconData: Icons.location_on,
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your address.';
                    }
                    return null;
                  },
                ),
                SizedBox(height: AppSizeH.s20),
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
                              authBloc.add(AuthEvent.register(
                                  username: _usernameController.text,
                                  password: _passwordController.text,
                                  email: _emailController.text,
                                  firstName: _fnameController.text,
                                  lastName: _lnameController.text));
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
                          child: const Text('Sign Up'),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: AppSizeH.s24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
