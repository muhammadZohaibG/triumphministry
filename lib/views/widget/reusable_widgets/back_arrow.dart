import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackArrow extends StatelessWidget {
  final VoidCallback? ontap;
  Color color;
  String? image;
  BackArrow({Key? key, this.ontap, this.color=Colors.black, this.image='assets/images/backArrow.svg'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: SvgPicture.asset(image!, color: color,));
  }
}
