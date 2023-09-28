import 'package:flutter/material.dart';


class Big_divider extends StatelessWidget {
  const Big_divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: const EdgeInsets.only(top: 20,bottom: 20),
        width: double.infinity,
        height: 3,color:const Color(0xffDBDBDB))
    ;
  }
}
