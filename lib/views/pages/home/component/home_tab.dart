import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget {
  final Widget child;
  final double width, height;
  final VoidCallback onTap;

  const HomeTabBar({Key? key, required this.child, required this.height, required this.width,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDADADA)),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: child,
      ),
    );
  }
}

class HomeTabBarColor extends StatelessWidget {
  final Widget child;
  final double width, height;

  const HomeTabBarColor({Key? key, required this.child, required this.height, required this.width, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: Color(0xffFFCC00),
        shape: RoundedRectangleBorder(
          // side: BorderSide(width: 1, color: Color(0xFFDADADA)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: child,
    );
  }
}
