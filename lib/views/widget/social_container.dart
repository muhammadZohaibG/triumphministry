import 'package:flutter/material.dart';

import '../../constant/sizeconfig.dart';

class SocialContainer extends StatelessWidget {
  final String image;
  const SocialContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6 * SizeConfig.heightMultiplier,
      width: 14 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xffFFFFFF),
          border: Border.all(color: const Color(0xffEAEAF5))),
      child: Center(
        child: Image.asset(
          image,
          height: 4 * SizeConfig.heightMultiplier,
        ),
      ),
    );
  }
}
