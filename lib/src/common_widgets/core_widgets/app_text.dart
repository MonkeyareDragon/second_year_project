import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;
  final TextOverflow overflow;
  final int maxWords;

  const AppText({
    Key? key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign,
    this.overflow = TextOverflow.clip,
    this.maxWords = 10, // Default to clip
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final truncatedText = text.split(' ').take(maxWords).join(' ') +
    (text.split(' ').length > maxWords ? '..' : '');
    return Text(
      truncatedText,
      textAlign: textAlign == null ? null : TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      overflow: overflow,
    );
  }
}
