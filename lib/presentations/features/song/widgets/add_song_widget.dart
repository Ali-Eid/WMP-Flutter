import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/domain/models/song_models/requests/create_song_request/create_song_request_model.dart';
import 'package:wmp_project/presentations/features/artist/blocs/artist_bloc/artist_bloc.dart';
import 'package:wmp_project/presentations/features/song/blocs/song_bloc/song_bloc.dart';

import '../../../../app/depndency_injection.dart';
import '../../../../domain/models/static_model/static_model.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';
import '../../../widgets/custome_drop_down_widget.dart';
import '../../auth/widgets/login_field_widget.dart';
import '../../splash/blocs/static_bloc/static_bloc.dart';

class AddSongWidget extends StatefulWidget {
  const AddSongWidget({super.key});

  @override
  State<AddSongWidget> createState() => _AddSongWidgetState();
}

class _AddSongWidgetState extends State<AddSongWidget> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _priceController = TextEditingController();
  late SongBloc songBloc;
  late ArtistBloc artistBloc;
  StaticModel? selectedSongTypeValue;
  StaticModel? selectedArtistValue;
  @override
  void initState() {
    songBloc = instance<SongBloc>();
    artistBloc = instance<ArtistBloc>()..add(const ArtistEvent.getArtists());
    context.read<StaticBloc>().add(const StaticEvent.getSongsTypes());
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
                'Add Song',
                style: TextStyle(
                  fontSize: AppSizeSp.s18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: AppSizeH.s12),
              LoginField(
                labelText: 'Title',
                iconData: Icons.person,
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter song title.';
                  }
                  return null;
                },
              ),
              SizedBox(height: AppSizeH.s12),
              LoginField(
                keyboardType: TextInputType.number,
                labelText: 'Price',
                iconData: Icons.person,
                controller: _priceController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter song price.';
                  }
                  return null;
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
                        hintText: "Select song type",
                        validatorText: "Please select song type.",
                        items: value.static,
                        onChanged: (value) {
                          setState(() {
                            selectedSongTypeValue = value;
                          });
                        },
                      );
                    },
                    orElse: () {
                      return CustomeDropdownWidget(
                        hintText: "Select song type",
                        validatorText: "Please select song type.",
                        items: const [],
                        onChanged: (value) {
                          setState(() {
                            selectedSongTypeValue = value;
                          });
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(height: AppSizeH.s12),
              BlocBuilder(
                bloc: artistBloc,
                builder: (context, ArtistState state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const LinearProgressIndicator(
                        color: ColorManager.primaryColor,
                      );
                    },
                    loaded: (value) {
                      return CustomeDropdownWidget(
                        hintText: "Select artist",
                        validatorText: "Please select artist.",
                        items: value.artists
                            .map((artist) => StaticModel(
                                id: artist.id,
                                name: '${artist.firstName} ${artist.lastName}'))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedArtistValue = value;
                          });
                        },
                      );
                    },
                    orElse: () {
                      return CustomeDropdownWidget(
                        hintText: "Select artist",
                        validatorText: "Please select artist.",
                        items: const [],
                        onChanged: (value) {
                          setState(() {
                            selectedArtistValue = value;
                          });
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(height: AppSizeH.s12),
              BlocConsumer(
                bloc: songBloc,
                listener: (context, SongState state) {
                  state.mapOrNull(
                    error: (value) {
                      Fluttertoast.showToast(
                          msg: value.message, backgroundColor: Colors.red);
                    },
                    addSong: (value) {Fluttertoast.showToast(
                        msg: "Added the song successfully", backgroundColor: Colors.green);
                      context.pop(true);
                    },
                  );
                },
                builder: (context, SongState state) {
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
                            songBloc.add(SongEvent.addSong(
                                createSongRequestModel: CreateSongRequestModel(
                                    title: _titleController.text,
                                    typeId: selectedSongTypeValue?.id ?? 1,
                                    price: int.parse(_priceController.text)
                                        .toDouble(),
                                    artistId: selectedArtistValue?.id ?? 4)));
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
                        child: const Text('Add song'),
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
