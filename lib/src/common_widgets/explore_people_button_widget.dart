import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:dilov_app/src/common_widgets/match_button_widget.dart';
import 'package:flutter/material.dart';

class ExplorePeopleButtonWidget extends StatelessWidget {
  const ExplorePeopleButtonWidget({
    super.key,
    required this.controller,
  });

  final AppinioSwiperController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
          iconPath: 'icon-close.png',
          onTap: () {
            controller.swipeLeft();
          },
        ),
        MatchButtonWidget(
          dimension: 80.0,
          iconPath: 'icon-love.png',
          onTap: () {
            controller.swipe();
          },
        ),
        MatchButtonWidget(
          iconPath: 'icon-favorite.png',
          onTap: () {
            controller.swipeRight();
          },
        )
      ],
    );
  }
}
