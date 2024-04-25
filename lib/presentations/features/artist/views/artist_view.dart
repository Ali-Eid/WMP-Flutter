import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmp_project/domain/models/artis_model/requests/create_request_artist/create_request_artist_model.dart';
import 'package:wmp_project/presentations/features/artist/blocs/artist_bloc/artist_bloc.dart';
import 'package:wmp_project/presentations/features/artist/widgets/add_artist_widget.dart';
import 'package:wmp_project/presentations/features/artist/widgets/artist_card_widget.dart';
import 'package:wmp_project/presentations/features/splash/blocs/app_bloc/app_bloc.dart';
import 'package:wmp_project/presentations/resources/color_manager.dart';
import 'package:wmp_project/presentations/resources/values_manager.dart';

import '../../../../app/depndency_injection.dart';
import '../../auth/widgets/login_field_widget.dart';
import '../../order/widgets/buy_song_widget.dart';
import '../../splash/blocs/profile_bloc/profile_bloc.dart';

class ArtistView extends StatefulWidget {
  const ArtistView({super.key});

  @override
  State<ArtistView> createState() => _ArtistViewState();
}

class _ArtistViewState extends State<ArtistView> {
  late ArtistBloc artistBloc;
  final _searchController = TextEditingController();
  @override
  void initState() {
    artistBloc = instance<ArtistBloc>()..add(const ArtistEvent.getArtists());
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: BlocBuilder(
          bloc: context.read<ProfileBloc>(),
          builder: (context, state) {
            return context.read<ProfileBloc>().isAdmin ?? false
                ? FloatingActionButton(
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () async {
                      var res = await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppSizeR.s10),
                              topLeft: Radius.circular(AppSizeR.s10)),
                        ),
                        builder: (context) {
                          return const AddArtistWidget();
                        },
                      );
                      if (res != null && res) {
                        artistBloc.add(const ArtistEvent.getArtists());
                      }
                    },
                    child: const Icon(
                      Icons.add_circle_outline,
                      color: ColorManager.white,
                    ),
                  )
                : FloatingActionButton(
                    backgroundColor: ColorManager.primaryColor,
                    onPressed: () async {
                      var res = await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppSizeR.s10),
                              topLeft: Radius.circular(AppSizeR.s10)),
                        ),
                        builder: (context) {
                          return const BuySongWidget();
                        },
                      );
                      if (res != null && res) {
                        // artistBloc.add(const ArtistEvent.getArtists());
                      }
                    },
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: ColorManager.white,
                    ),
                  );
          },
        ),
        body: BlocBuilder(
          bloc: artistBloc,
          builder: (context, ArtistState state) {
            return state.maybeMap(
              loading: (value) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (value) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      child: TextField(
                        controller: _searchController,
                        onChanged: (text) {
                          artistBloc
                              .add(ArtistEvent.searchArtist(atristName: text));
                        },
                        cursorColor: ColorManager.primaryColor,
                        decoration: InputDecoration(
                          hintText: 'Search Artists...',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: ColorManager.primaryColor,
                          ),
                          filled: true,
                          fillColor:
                              Colors.grey[200], // Adjust fill color as desired
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
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizeH.s10),
                    Expanded(
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: value.artists.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ArtistCard(
                                model: value.artists[index],
                              );
                            }))
                  ],
                );
              },
              orElse: () {
                return const SizedBox();
              },
            );
          },
        ));
  }
}
