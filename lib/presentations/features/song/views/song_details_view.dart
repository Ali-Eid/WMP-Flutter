import 'package:flutter/material.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/values_manager.dart';

class SongDetailsView extends StatefulWidget {
  final SongModel model;
  const SongDetailsView({super.key, required this.model});

  @override
  State<SongDetailsView> createState() => _SongDetailsViewState();
}

class _SongDetailsViewState extends State<SongDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: ColorManager.primaryColor,
        ),
        centerTitle: true,
        title: Text(
          widget.model.title,
          style: TextStyle(
              color: ColorManager.primaryColor,
              fontSize: AppSizeSp.s18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Hero(
                tag: widget
                    .model.id, // Use same tag for hero animation if applicable
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizeW.s16),
                  child: Image.asset(
                    ImageAssets.song,
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
                      widget.model.title,
                      style: TextStyle(
                          fontSize: AppSizeSp.s18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: AppSizeH.s8),
                    Row(
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(
                            fontSize: AppSizeSp.s14,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        SizedBox(width: AppSizeW.s2), //
                        Text(
                          '\$${widget.model.price}',
                          style: TextStyle(
                            fontSize: AppSizeSp.s14,
                            fontWeight: FontWeight.w500,
                          ),
                        ), // Assuming price is a double
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Type:',
                          style: TextStyle(
                            fontSize: AppSizeSp.s12,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        SizedBox(width: AppSizeW.s2), //
                        Text(
                          widget.model.type,
                          style: TextStyle(
                            fontSize: AppSizeSp.s12,
                            fontWeight: FontWeight.w500,
                          ),
                        ), // Assuming price is a double
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s16),
          // Song List Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
            child: Text(
              'Artist',
              style: TextStyle(
                  color: ColorManager.primaryColor,
                  fontSize: AppSizeSp.s16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: AppSizeH.s8), // Add some spacing
          Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
              child: Container(
                // Wrap ListTile with Container for decoration
                decoration: BoxDecoration(
                  color: Colors.white, // Adjust background color if desired
                  borderRadius: BorderRadius.circular(AppSizeR.s8),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.primaryColor
                          .withOpacity(0.2), // Adjust shadow color
                      spreadRadius: AppSizeR.s2, // Adjust shadow spread
                      blurRadius: AppSizeR.s4, // Adjust shadow blur
                    ),
                  ],
                ),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizeR.s8),
                    child: Image.asset(
                      ImageAssets.artist, // Replace with image URL property
                      width: AppSizeW.s50,
                      height: AppSizeH.s50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    widget.model.artistName,
                    style: TextStyle(
                        fontSize: AppSizeSp.s16, fontWeight: FontWeight.bold),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
