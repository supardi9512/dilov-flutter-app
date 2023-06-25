import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:flutter/material.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget({
    super.key,
    required this.iconPath,
    required this.onTap,
    this.dimension = 50.0,
  });

  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              '${AssetImageManager.assetPath}/$iconPath',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
