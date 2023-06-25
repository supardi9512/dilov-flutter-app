import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.0,
      height: 34.0,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${AssetImageManager.assetPath}/logo.png'))),
    );
  }
}
