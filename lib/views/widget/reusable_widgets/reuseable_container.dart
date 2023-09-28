import 'package:flutter/material.dart';


class ReusableContainer extends StatelessWidget {
  Widget? child;
  double height, width;
  Color color;
   ReusableContainer({Key? key, required this.child,required this.width, required this.height, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(5)
      ),
      child: child,

    );
  }
}
class ReusableContainerShadow extends StatelessWidget {
  Widget? child;
  double height, width;
  Color color;
  ReusableContainerShadow({Key? key, required this.child,required this.width, required this.height, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          boxShadow:  [BoxShadow(
            blurRadius: 5,
            color:Colors.grey,
          )],
          borderRadius: BorderRadius.circular(5)
      ),
      child: child,

    );
  }
}