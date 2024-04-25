import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wmp_project/domain/models/artis_model/artist_model.dart';
import 'package:wmp_project/presentations/resources/assets_manager.dart';
import 'package:wmp_project/presentations/resources/values_manager.dart';

import '../../../../app/depndency_injection.dart';
import '../../../resources/color_manager.dart';
import '../../song/blocs/song_bloc/song_bloc.dart';

class ArtistDetailsView extends StatefulWidget {
  final ArtistModel model;
  const ArtistDetailsView({super.key, required this.model});

  @override
  State<ArtistDetailsView> createState() => _ArtistDetailsViewState();
}

class _ArtistDetailsViewState extends State<ArtistDetailsView> {
  late SongBloc songBloc;

  @override
  void initState() {
    songBloc = instance<SongBloc>()
      ..add(SongEvent.songsByArtist(artistId: widget.model.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: ColorManager.primaryColor,
        ),
        centerTitle: true,
        title: Text(
          widget.model.firstName,
          style: TextStyle(
              color: ColorManager.primaryColor,
              fontSize: AppSizeSp.s18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Artist Image
            Row(
              children: [
                Hero(
                  tag: widget.model
                      .id, // Use same tag for hero animation if applicable
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizeW.s16),
                    child: Image.asset(
                      ImageAssets.artist,
                      fit: BoxFit.cover,
                      height: AppSizeH.s150,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.model.firstName} ${widget.model.lastName}',
                        style: TextStyle(
                            fontSize: AppSizeSp.s18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: AppSizeH.s8),
                      Text('Country: ${widget.model.country}'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizeW.s16), // Add some spacing
            // Song List Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
              child: Text(
                'Songs',
                style: TextStyle(
                    color: ColorManager.primaryColor,
                    fontSize: AppSizeSp.s16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: AppSizeH.s8), // Add some spacing
            // Song List
            BlocConsumer(
              bloc: songBloc,
              listener: (context, SongState state) {
                state.mapOrNull(
                  error: (value) {
                    Fluttertoast.showToast(
                        msg: value.message, backgroundColor: Colors.red);
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
                  loaded: (value) {
                    return ListView.builder(
                      shrinkWrap: true, // Prevent unnecessary scrolling
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable scrolling
                      itemCount: value.songs.length,
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
                      itemBuilder: (context, index) {
                        final song = value.songs[index];
                        return Container(
                          // Wrap ListTile with Container for decoration
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Adjust background color if desired
                            borderRadius: BorderRadius.circular(AppSizeR.s8),
                            boxShadow: [
                              BoxShadow(
                                color: ColorManager.primaryColor
                                    .withOpacity(0.4), // Adjust shadow color
                                spreadRadius:
                                    AppSizeR.s2, // Adjust shadow spread
                                blurRadius: AppSizeR.s4, // Adjust shadow blur
                              ),
                            ],
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(AppSizeR.s8),
                              child: Image.asset(
                                ImageAssets
                                    .song, // Replace with image URL property
                                width: AppSizeW.s50,
                                height: AppSizeH.s50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              song.title,
                              style: TextStyle(
                                  fontSize: AppSizeSp.s16,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Price:',
                                      style: TextStyle(
                                        color: ColorManager.primaryColor,
                                      ),
                                    ),
                                    SizedBox(width: AppSizeW.s2), //
                                    Text(
                                        '\$${song.price}'), // Assuming price is a double
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Type:',
                                      style: TextStyle(
                                        color: ColorManager.primaryColor,
                                      ),
                                    ),
                                    SizedBox(width: AppSizeW.s2), //
                                    Text(song
                                        .type), // Assuming price is a double
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
