import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class hungryTxt extends StatelessWidget {
  final Color color;
  final double? height;
  const hungryTxt({super.key, required this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/Hungry_.svg",
      // ignore: deprecated_member_use
      color: color,
      height: height,
    );
  }
}
