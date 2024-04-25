import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/routes_manager.dart';
import '../../../resources/values_manager.dart';

class SongCard extends StatelessWidget {
  final SongModel model;

  const SongCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(RoutesNames.songDetailsRoute, extra: model);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: ColorManager.primaryColor),
          borderRadius: BorderRadius.circular(
              AppSizeR.s12), // Adjust corner radius as desired
        ),
        elevation: 3.0,
        shadowColor: ColorManager.white
            .withOpacity(0.9), // Add a slight shadow for depth
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              AppSizeR.s16), // Match corner radius to card
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Image.asset(
                ImageAssets.song,
                fit: BoxFit.fill,
                width: double.infinity,
                height: AppSizeH.s200, // Adjust image height as needed
              ),
              Padding(
                padding: EdgeInsets.all(AppSizeW.s6),
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: AppSizeSp.s18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        blurRadius: AppSizeR.s3,
                        color: ColorManager.primaryColor.withOpacity(0.1),
                        offset: const Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
