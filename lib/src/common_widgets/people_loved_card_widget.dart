import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:dilov_app/src/theme_manager/color_manager.dart';
import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  const PeopleLovedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
      ),
      child: Container(
        margin: const EdgeInsets.only(
          bottom: AppMargin.m18,
        ),
        decoration: BoxDecoration(
          color: ColorManager.secondary,
          borderRadius: BorderRadius.circular(
            AppSize.s20,
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(
            AppPadding.p10,
          ),
          leading: Container(
            width: 70.0,
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  '${AssetImageManager.assetPath}/people-love-3.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            'Ismirada',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          subtitle: Text(
            '24, Doctor',
            style: getGrey60TextStyle(),
          ),
        ),
      ),
    );
  }
}