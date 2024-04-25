import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/domain/models/artis_model/artist_model.dart';
import 'package:wmp_project/presentations/resources/assets_manager.dart';
import 'package:wmp_project/presentations/resources/routes_manager.dart';
import 'package:wmp_project/presentations/resources/values_manager.dart';

import '../../../resources/color_manager.dart';

class ArtistCard extends StatelessWidget {
  final ArtistModel model;

  const ArtistCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(RoutesNames.artistDetailsRoute, extra: model);
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
                ImageAssets.artist,
                fit: BoxFit.fill,
                width: double.infinity,
                height: AppSizeH.s200, // Adjust image height as needed
              ),
              Padding(
                padding: EdgeInsets.all(AppSizeW.s6),
                child: Text(
                  '${model.firstName} ${model.lastName}',
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
