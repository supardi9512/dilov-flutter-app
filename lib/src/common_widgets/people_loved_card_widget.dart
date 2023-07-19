import 'package:dilov_app/src/features/likes_you/domain/user.dart';
import 'package:dilov_app/src/features/likes_you/presentation/people_profile_screen.dart';
import 'package:dilov_app/src/theme_manager/asset_image_manager.dart';
import 'package:dilov_app/src/theme_manager/color_manager.dart';
import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  const PeopleLovedCardWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            PeopleProfileScreen.routeName,
          );
        },
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
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    user.imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              user.fullname,
              style: getWhiteTextStyle(
                fontSize: FontSizeManager.f20,
                fontWeight: FontWeightManager.semiBold,
              ),
            ),
            subtitle: Text(
              '${user.age}, ${user.occupation}',
              style: getGrey60TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
