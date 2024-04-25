import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/presentations/features/splash/blocs/static_bloc/static_bloc.dart';
import 'package:wmp_project/presentations/widgets/custome_drop_down_widget.dart';

import '../../../../app/depndency_injection.dart';
import '../../../../domain/models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import '../../../../domain/models/static_model/static_model.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';
import '../../auth/widgets/login_field_widget.dart';
import '../blocs/artist_bloc/artist_bloc.dart';

class AddArtistWidget extends StatefulWidget {
  const AddArtistWidget({super.key});

  @override
  State<AddArtistWidget> createState() => _AddArtistWidgetState();
}

class _AddArtistWidgetState extends State<AddArtistWidget> {
  final _formKey = GlobalKey<FormState>();
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  late ArtistBloc artistBloc;
  final List<StaticModel> items = [
    StaticModel(id: 0, name: "Male"),
    StaticModel(id: 1, name: "Female"),
  ];
  StaticModel? selectedGenderValue;
  StaticModel? selectedCountryValue;
  @override
  void initState() {
    artistBloc = instance<ArtistBloc>();
    context.read<StaticBloc>().add(const StaticEvent.getCountries());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            end: AppSizeW.s10, start: AppSizeW.s10, top: AppSizeH.s8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: AppSizeH.s12),
              Text(
                'Add Artist',
                style: TextStyle(
                  fontSize: AppSizeSp.s18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: AppSizeH.s12),
              LoginField(
                labelText: 'First name',
                iconData: Icons.person,
                controller: _fnameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your firstname.';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSizeH.s12),
              LoginField(
                labelText: 'Last name',
                iconData: Icons.person,
                controller: _lnameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your lastname.';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSizeH.s12),
              CustomeDropdownWidget(
                hintText: "Select gender",
                validatorText: "Please select gender.",
                items: items,
                onChanged: (value) {
                  setState(() {
                    selectedGenderValue = value;
                  });
                },
              ),
              SizedBox(height: AppSizeH.s12),
              BlocBuilder(
                bloc: context.read<StaticBloc>(),
                builder: (context, StaticState state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const LinearProgressIndicator(
                        color: ColorManager.primaryColor,
                      );
                    },
                    loaded: (value) {
                      return CustomeDropdownWidget(
                        hintText: "Select counrty",
                        validatorText: "Please select country.",
                        items: value.static,
                        onChanged: (value) {
                          setState(() {
                            selectedCountryValue = value;
                          });
                        },
                      );
                    },
                    orElse: () {
                      return CustomeDropdownWidget(
                        hintText: "Select counrty",
                        validatorText: "Please select country.",
                        items: const [],
                        onChanged: (value) {
                          setState(() {
                            selectedCountryValue = value;
                          });
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(height: AppSizeH.s12),
              BlocConsumer(
                bloc: artistBloc,
                listener: (context, ArtistState state) {
                  state.mapOrNull(
                    error: (value) {
                      Fluttertoast.showToast(
                          msg: value.message, backgroundColor: Colors.red);
                    },
                    addArtist: (value) {
                      context.pop(true);
                    },
                  );
                },
                builder: (context, ArtistState state) {
                  return state.maybeMap(
                    loading: (value) {
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
                            artistBloc.add(ArtistEvent.addArtist(
                                createRequestArtistModel:
                                    CreateRequestArtistModel(
                                        fname: _fnameController.text,
                                        lname: _lnameController.text,
                                        gender: selectedGenderValue?.id ?? 0,
                                        countryId:
                                            selectedCountryValue?.id ?? 1)));
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
                        child: const Text('Add artist'),
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
    );
  }
}
