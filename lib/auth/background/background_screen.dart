import 'package:flutter/material.dart';
import 'package:triumph_ministry/constant/app_color.dart';

import '../../constant/sizeconfig.dart';
import 'component/auth_tab_bar.dart';

class BackGroundScreen extends StatefulWidget {
  const BackGroundScreen({super.key});

  @override
  State<BackGroundScreen> createState() => _BackGroundScreenState();
}

class _BackGroundScreenState extends State<BackGroundScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: ShapesPainter(),
            child: SizedBox(
              height: 40 * SizeConfig.heightMultiplier,
              width: double.infinity,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 20 * SizeConfig.heightMultiplier,
                left: 5 * SizeConfig.widthMultiplier),
            height: 67 * SizeConfig.heightMultiplier,
            width: 90 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xffF6BB22).withOpacity(.13),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ],
            ),
            child: AuthTabBar(
              selectedindex: 0,
            ),
          ),
          SizedBox(
            height: 3 * SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}

const double _kCurveHeight = 40;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(size.width / 2, 3.3 * _kCurveHeight, size.width,
        -5 * SizeConfig.heightMultiplier);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = AppColors.primaryColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
