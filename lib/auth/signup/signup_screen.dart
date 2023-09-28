import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triumph_ministry/constant/asset_images.dart';
import 'package:triumph_ministry/constant/sizeconfig.dart';

import '../../constant/app_color.dart';
import '../../constant/email_validation.dart';
import '../../views/widget/auth_text_field.dart';
import '../../views/widget/social_container.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6 * SizeConfig.widthMultiplier),
      child: Column(
        children: [
          SizedBox(
            height: 4 * SizeConfig.heightMultiplier,
          ),
          CommonTextfeild(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            hinttext: "Enter email or username",
            obscuretext: true,
            showicon: false,
            validation: (value) {
              if (value!.isEmpty) {
                return "Enter Email Address ";
              } else if (!isEmailValidator(value)) {
                return "Enter Correct Email";
              }
              return null;
            },
          ),
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          CommonTextfeild(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            hinttext: "Password",
            obscuretext: true,
            showicon: true,
            validation: (value) {
              if (value!.isEmpty) {
                return " Enter Password ";
              } else if (value.length < 6) {
                return "Password length should at least 6";
              }
              return null;
            },
          ),
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          CommonTextfeild(
            keyboardType: TextInputType.emailAddress,
            controller: email,
            hinttext: "Confirm Password",
            obscuretext: true,
            showicon: true,
            validation: (value) {
              if (value!.isEmpty) {
                return "Confirm Password";
              } else if (value.length < 6) {
                return "Password length should at least 6";
              }
              return null;
            },
          ),
          SizedBox(
            height: 6 * SizeConfig.heightMultiplier,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.secondaryColor,
              fixedSize: Size(
                90 * SizeConfig.widthMultiplier,
                5.5 * SizeConfig.heightMultiplier,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () async {
              // if (key.currentState!.validate()) {
              //   loadingProgressIndicator(context);
              //   await _authController.loginUser(
              //     _authController.emails.text,
              //     _authController.passs.text,
              //   );
              // } else {
              //   setState(() => _autoValidate = AutovalidateMode.always);
              // }
            },
            child: Text(
              "Sign Up",
              style: GoogleFonts.poppins(
                  fontSize: 2 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteColor),
            ),
          ),
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "OR",
              style: GoogleFonts.poppins(
                  fontSize: 1.8 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w400,
                  color: AppColors.hinttextColor),
            ),
          ),
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SocialContainer(image: googleIcon),
              SizedBox(
                width: 3 * SizeConfig.widthMultiplier,
              ),
              SizedBox(
                width: 3 * SizeConfig.widthMultiplier,
              ),
            ],
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}
