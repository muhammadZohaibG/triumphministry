import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiHelper {
  UiHelper._();
  static BoxDecoration boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.06),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 0), // changes position of shadow
        )
      ],
    );
  }

  // static void showSnackbar(String title, String message) {
  //   if (_snackId == title + message) return;
  //   _snackId = title + message;

  //   Get.snackbar(
  //     title,
  //     message,
  //     backgroundColor: AppColors.blackBGColor.withOpacity(0.6),
  //     margin: const EdgeInsets.all(10),
  //   ).future.whenComplete(() => _snackId = '');
  // }

  static void authErrooSnackbar(String title, String message) {
    Get.snackbar(title, message,
        backgroundColor: Colors.black.withOpacity(0.6),
        margin: const EdgeInsets.all(10),
        colorText: Colors.white);
  }
}
