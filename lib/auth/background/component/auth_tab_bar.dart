// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triumph_ministry/auth/login/login.dart';
import 'package:triumph_ministry/auth/signup/signup_screen.dart';

import '../../../../../constant/app_color.dart';
import '../../../../../constant/sizeconfig.dart';

class AuthTabBar extends StatefulWidget {
  int selectedindex;
  AuthTabBar({Key? key, required this.selectedindex}) : super(key: key);

  @override
  _AuthTabBarState createState() => _AuthTabBarState();
}

class _AuthTabBarState extends State<AuthTabBar> {
  List<Widget> pages = [
    const LoginScreen(),
    const SignUpScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5 * SizeConfig.heightMultiplier,
        ),
        categories(),
        Flexible(
          flex: 2,
          child: pages[widget.selectedindex],
        ),
      ],
    );
  }

  Widget categories() {
    return Container(
      height: 6 * SizeConfig.heightMultiplier,
      width: 80 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffF6BB22).withOpacity(.15),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 3),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 1 * SizeConfig.widthMultiplier,
          ),
          catogoriess("Log In".trim(), 0),
          const Spacer(),
          catogoriess("Sign Up".trim(), 1),

          // const SizedBox(
          //   width: 10,
          // ),
        ],
      ),
    );
  }

  Widget catogoriess(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selectedindex = index;
        });
      },
      child: Container(
        height: 5.4 * SizeConfig.heightMultiplier,
        width: 38 * SizeConfig.widthMultiplier,

        // margin:
        //     EdgeInsets.symmetric(horizontal: 2 * SizeConfig.widthMultiplier),
        decoration: BoxDecoration(
            color: widget.selectedindex == index
                ? const Color(0xff0D0D0D)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: 2 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w400,
                color: widget.selectedindex == index
                    ? AppColors.whiteColor
                    : AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
