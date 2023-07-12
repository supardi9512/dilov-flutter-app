import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class PeopleIdentityWidget extends StatelessWidget {
  const PeopleIdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shyna',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f28,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
          Text(
            '22, Lawyer',
            style: getBlackTextStyle(),
          ),
          const SizedBox(
            height: AppSize.s16,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget neque lacus. Aliquam bibendum neque nisl, ac dapibus nunc volutpat eu. Donec non velit at nisl porta blandit.',
            style: getWhiteTextStyle(),
          ),
          const SizedBox(
            height: AppSize.s16,
          )
        ],
      ),
    );
  }
}
