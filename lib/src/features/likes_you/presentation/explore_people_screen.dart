import 'package:dilov_app/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:dilov_app/src/common_widgets/explore_people_button_widget.dart';
import 'package:dilov_app/src/common_widgets/match_card_widget.dart';
import 'package:dilov_app/src/features/auth/data/data_user_account_local.dart';
import 'package:dilov_app/src/features/auth/domain/user_account.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? account;

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    account = result;

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p40,
          horizontal: AppPadding.p24,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(
              imagePath: account?.imageProfile,
            ),
            const SizedBox(
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
