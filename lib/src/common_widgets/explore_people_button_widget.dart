import 'package:dilov_app/src/common_widgets/match_button_widget.dart';
import 'package:flutter/material.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          iconPath: 'icon-close.png',
          onTap: () {},
        ),
        MatchButtonWidget(
          dimension: 80.0,
          iconPath: 'icon-love.png',
          onTap: () {},
        ),
        MatchButtonWidget(
          iconPath: 'icon-favorite.png',
          onTap: () {},
        )
      ],
    );
  }
}
