import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final bool? softWrap;
  final TextOverflow? overflow;
  final TextDecoration? decoration;

  const TextView({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.textAlign,
    this.maxLines,
    this.fontWeight,
    this.softWrap,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      overflow: overflow,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: 'Pretendard',
        height: 1.3,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color,
        decoration: decoration,
      ),
    );
  }
}
