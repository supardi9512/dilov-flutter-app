import 'package:dilov_app/src/common_widgets/match_button_widget.dart';
import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                '${AssetImageManager.assetPath}/people-love-1.png',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p40,
            horizontal: AppPadding.p26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                dimension: 20.0,
                iconPath: 'icon-arrow-left.png',
                onTap: () {},
              ),
              Text(
                'Lover Profile\nDetails',
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                  fontWeight: FontWeightManager.semiBold,
                  fontSize: FontSizeManager.f20,
                ),
              ),
              MatchButtonWidget(
                dimension: 20.0,
                iconPath: 'icon-close-circle.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
