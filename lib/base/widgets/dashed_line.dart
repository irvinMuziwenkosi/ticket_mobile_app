import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
    required this.boxWidth,
    this.hPadding = 0,
    required this.dashWidth,
    required this.sizeDetm,
  });

  final double boxWidth;
  final double hPadding;
  final double dashWidth;
  final int sizeDetm;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("Width: ${constraints.constrainWidth().round()}");
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          (boxWidth / sizeDetm).floor(), //Calc no. of lines
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            child: SizedBox(
              width: dashWidth,
              height: 2,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  color: Styles.bgColor,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
