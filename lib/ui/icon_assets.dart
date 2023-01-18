import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconAsset extends StatelessWidget {
  final String name;
  final double? height;
  final double? width;
  final Color? color;

  IconAsset(
    this.name, {
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/$name',
      height: height,
      width: width,
      color: color,
    );
  }
}
