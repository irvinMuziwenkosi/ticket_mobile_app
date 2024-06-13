import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';

class RowDoubleText extends StatelessWidget {
  const RowDoubleText({super.key, required this.bigTxt, required this.btnTxt});

  final String bigTxt;
  final String btnTxt;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigTxt,
          style: Styles.h2,
        ),
        TextButton(
          onPressed: () {},
          child: Text(btnTxt, style: Styles.h4),
        )
      ],
    );
  }
}
