// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/app_color.dart';
import '../../constant/sizeconfig.dart';

// ignore: must_be_immutable
class CommonTextfeild extends StatefulWidget {
  CommonTextfeild({
    Key? key,
    required this.obscuretext,
    required this.hinttext,
    required this.controller,
    required this.keyboardType,
    required this.showicon,
    required this.validation,
  }) : super(key: key);
  bool obscuretext;
  final String hinttext;
  final TextEditingController controller;
  final bool showicon;
  final validation;

  var keyboardType;
  @override
  State<CommonTextfeild> createState() => _CommonTextfeildState();
}

class _CommonTextfeildState extends State<CommonTextfeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 1.8 * SizeConfig.textMultiplier,
        color: AppColors.hinttextColor,
      ),
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      cursorWidth: 2,
      obscureText: widget.obscuretext,
      validator: widget.validation,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
        fillColor: AppColors.whiteColor,
        filled: true,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.borderColor)),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor, width: 1),
        ),
        isDense: true,
        suffixIcon: widget.showicon
            ? Padding(
                padding: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.obscuretext = !widget.obscuretext;
                    });
                  },
                  child: Icon(
                    widget.obscuretext
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black45,
                  ),
                ))
            : null,
        hintText: widget.hinttext,
        hintStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          fontSize: 1.8 * SizeConfig.textMultiplier,
          color: AppColors.hinttextColor,
        ),
      ),
    );
  }
}
