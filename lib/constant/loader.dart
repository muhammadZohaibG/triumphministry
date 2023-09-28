import 'package:flutter/material.dart';

import 'app_color.dart';

void loadingProgressIndicator(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    builder: (ctx) {
      return Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: AppColors.primaryColor,
          strokeWidth: 1,
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    },
    context: context,
  );
}
