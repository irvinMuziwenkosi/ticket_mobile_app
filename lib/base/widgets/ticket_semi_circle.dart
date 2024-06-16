import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';

class TicketSemiCircle extends StatelessWidget {
  const TicketSemiCircle({
    super.key,
    required this.boxHeight,
    required this.sideLeft,
  });

  final double boxHeight;
  final bool sideLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxHeight * 0.05,
      decoration: BoxDecoration(
        color: Styles.bgColor,
        borderRadius: sideLeft
            ? const BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              )
            : const BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
      ),
    );
  }
}
