import 'package:dilov_app/src/features/auth/presentation/sign_up_age_job_screen.dart';
import 'package:dilov_app/src/features/auth/presentation/sign_up_screen.dart';
import 'package:dilov_app/src/features/auth/presentation/sign_up_upload_photo_screen.dart';
import 'package:dilov_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:dilov_app/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:dilov_app/src/features/likes_you/presentation/people_profile_screen.dart';
import 'package:dilov_app/src/theme_manager/theme_data_manager.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getApplicationThemeData(),
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => const PeopleLovedScreen(),
        PeopleProfileScreen.routeName: (context) => const PeopleProfileScreen(),
      },
    );
  }
}
