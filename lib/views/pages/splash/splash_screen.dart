import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triumph_ministry/auth/background/background_screen.dart';

import '../../../constant/app_color.dart';
import '../../../constant/asset_images.dart';
import '../../../constant/sizeconfig.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const BackGroundScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                splashImage,
                height: 20 * SizeConfig.heightMultiplier,
              ),
            ),
            SizedBox(
              height: .5 * SizeConfig.heightMultiplier,
            ),
            Text(
              'Triumph Ministry',
              style: GoogleFonts.poppins(
                  fontSize: 2.7 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor),
            ),
          ],
        ));
  }
}
