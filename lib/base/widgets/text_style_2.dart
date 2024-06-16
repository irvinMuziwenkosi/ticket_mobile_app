import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';

class TextStyle2 extends StatelessWidget {
  const TextStyle2({super.key, required this.text, this.headerType = 3, this.isAlignEnd = false});
  final int headerType;
  final String text;
  final bool isAlignEnd;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: isAlignEnd ? TextAlign.end : TextAlign.start,
      style: headerType == 3 ? Styles.h3.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ) :  Styles.h4.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
