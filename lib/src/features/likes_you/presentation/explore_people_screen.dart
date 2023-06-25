import 'package:dilov_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:dilov_app/src/common_widgets/explore_people_button_widget.dart';
import 'package:dilov_app/src/common_widgets/match_card_widget.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ExplorePeopleScreen extends StatelessWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
            SizedBox(
              height: AppSize.s50,
            ),
            // tinggi menyesuaikan layar
            Expanded(
              child: Column(
                children: [
                  // tinggi menyesuaikan layar
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                  SizedBox(
                    height: AppSize.s50,
                  ),
                  ExplorePeopleButtonWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
