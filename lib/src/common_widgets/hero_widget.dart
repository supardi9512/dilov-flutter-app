import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215,
      margin: const EdgeInsets.symmetric(vertical: AppMargin.m30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s18),
        image: const DecorationImage(
          image: AssetImage('${AssetImageManager.assetPath}/hero.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
