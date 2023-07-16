import 'dart:io';
import 'package:dilov_app/src/common_widgets/custom_button_widget.dart';
import 'package:dilov_app/src/common_widgets/custom_text_button_widget.dart';
import 'package:dilov_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:dilov_app/src/theme_manager/font_manager.dart';
import 'package:dilov_app/src/utils/image_picker_util.dart';
import 'package:flutter/material.dart';
import 'package:dilov_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:dilov_app/src/common_widgets/upload_photo_widget.dart';
import 'package:dilov_app/src/theme_manager/style_manager.dart';
import 'package:dilov_app/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  File? image;

  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
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
              const LogoAndTaglineWidget(),
              const SizedBox(
                height: AppSize.s50,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(AppPadding.p24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.camera);
                              },
                              icon: const Icon(
                                Icons.camera,
                                size: AppSize.s50,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                getImageProfile(GetImageFrom.gallery);
                              },
                              icon: const Icon(
                                Icons.photo,
                                size: AppSize.s50,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: UploadPhotoWidget(
                  image: image,
                ),
              ),
              const SizedBox(
                height: 53.0,
              ),
              Text(
                'Andi Mania',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),
              const SizedBox(
                height: AppSize.s4,
              ),
              Text(
                '22, Lawyer',
                style: getBlack60TextStyle(),
              ),
              const SizedBox(
                height: 230.0,
              ),
              CustomButtonWidget(
                title: 'Update My Profile',
                onTap: () {},
              ),
              const SizedBox(
                height: AppSize.s16,
              ),
              CustomTextButtonWidget(
                title: "Skip for Now",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExplorePeopleScreen.routeName,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
