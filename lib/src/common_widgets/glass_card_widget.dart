import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p15,
        horizontal: AppPadding.p24,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: AppMargin.m26,
        horizontal: AppMargin.m30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33.0),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            '${AssetImageManager.assetPath}/glass-card.png',
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sabrina Anho',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f20,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              Text(
                '22 Traveler',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f14,
                ),
              ),
            ],
          ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '${AssetImageManager.assetPath}/icon-profile.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
