import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmp_project/presentations/features/song/widgets/song_card_widget.dart';
import 'package:wmp_project/presentations/features/splash/blocs/profile_bloc/profile_bloc.dart';

import '../../../../app/depndency_injection.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';
import '../../order/widgets/buy_song_widget.dart';
import '../../splash/blocs/app_bloc/app_bloc.dart';
import '../blocs/song_bloc/song_bloc.dart';
import '../widgets/add_song_widget.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView> {
  late SongBloc songBloc;

  final _searchController = TextEditingController();
  @override
  void initState() {
    songBloc = instance<SongBloc>()..add(const SongEvent.getSongs());
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
                        return const AddSongWidget();
                      },
                    );
                    if (res != null && res) {
                      songBloc.add(const SongEvent.getSongs());
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
        bloc: songBloc,
        builder: (context, SongState state) {
          return state.maybeMap(
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.primaryColor,
                ),
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
                        songBloc.add(SongEvent.searchSongs(songTitle: text));
                      },
                      cursorColor: ColorManager.primaryColor,
                      decoration: InputDecoration(
                        hintText: 'Search Songs...',
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
                          itemCount: value.songs.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return SongCard(
                              model: value.songs[index],
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
      ),
    );
  }
}
