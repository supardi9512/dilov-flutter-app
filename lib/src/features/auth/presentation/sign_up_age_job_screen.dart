import 'package:dilov_app/src/common_widgets/banner_widget.dart';
import 'package:dilov_app/src/common_widgets/custom_button_widget.dart';
import 'package:dilov_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:dilov_app/src/features/auth/presentation/sign_up_upload_photo_screen.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    jobController.clear();
    ageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerWidget(),
              CustomTextFieldWidget(
                labelName: "Occupation",
                hintText: "Write your occupation",
                controller: jobController,
              ),
              CustomTextFieldWidget(
                labelName: "Age",
                hintText: "Write your age",
                controller: ageController,
              ),
              const SizedBox(
                height: 107.0,
              ),
              CustomButtonWidget(
                title: 'Continue Sign Up',
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    SignUpUploadPhotoScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
