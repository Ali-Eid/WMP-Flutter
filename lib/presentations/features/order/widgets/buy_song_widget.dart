import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/domain/models/invoice_model/request/create_invoice_request.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';
import 'package:wmp_project/presentations/features/song/blocs/song_bloc/song_bloc.dart';
import 'package:wmp_project/presentations/features/splash/blocs/profile_bloc/profile_bloc.dart';
import 'package:wmp_project/presentations/widgets/custom_drop_down_multi_widget.dart';

import '../../../../app/depndency_injection.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';
import '../../auth/widgets/login_field_widget.dart';
import '../blocs/invoice_bloc/invoic_bloc.dart';

class BuySongWidget extends StatefulWidget {
  const BuySongWidget({super.key});

  @override
  State<BuySongWidget> createState() => _BuySongWidgetState();
}

class _BuySongWidgetState extends State<BuySongWidget> {
  final _formKey = GlobalKey<FormState>();
  late InvoicBloc invoicBloc;
  late SongBloc songBloc;
  List<SongModel>? songs;
  final _creditController = TextEditingController();

  @override
  void initState() {
    invoicBloc = instance<InvoicBloc>();
    songBloc = instance<SongBloc>()..add(const SongEvent.getSongs());
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
                'Buy Songs',
                style: TextStyle(
                  fontSize: AppSizeSp.s18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: AppSizeH.s12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizeW.s4),
                child: Row(
                  children: [
                    Text(
                      'Selected your songs',
                      style: TextStyle(
                        fontSize: AppSizeSp.s12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s6),
              BlocBuilder(
                bloc: songBloc,
                builder: (context, SongState state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const LinearProgressIndicator();
                    },
                    loaded: (value) {
                      return CustomMultiDropDownWidget(
                          hintText: "Select songs",
                          onChanged: (selectedItems) {
                            setState(() {
                              songs = selectedItems;
                            });
                          },
                          items: value.songs);
                    },
                    orElse: () {
                      return CustomMultiDropDownWidget(
                          hintText: "Songs",
                          onChanged: (selectedItems) {},
                          items: const []);
                    },
                  );
                },
              ),
              SizedBox(height: AppSizeH.s12),
              LoginField(
                labelText: 'Credit card',
                iconData: Icons.person,
                controller: _creditController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your firstname.';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSizeH.s12),
              BlocConsumer(
                bloc: invoicBloc,
                listener: (context, InvoicState state) {
                  state.mapOrNull(
                    error: (value) {
                      Fluttertoast.showToast(
                          msg: value.message, backgroundColor: Colors.red);
                    },
                    loaded: (value) {
                      Fluttertoast.showToast(
                          msg: "Create your order successfully",
                          backgroundColor: Colors.green);
                      context.pop();
                    },
                  );
                },
                builder: (context, InvoicState state) {
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
                            invoicBloc.add(InvoicEvent.createInvice(
                                request: CreateInvoiceRequest(
                                    songsIds:
                                        songs?.map((e) => e.id).toList() ?? [],
                                    creditCard: _creditController.text,
                                    userId: context
                                        .read<ProfileBloc>()
                                        .profileModel
                                        .id)));
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
                        child: const Text('Buy songs'),
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
