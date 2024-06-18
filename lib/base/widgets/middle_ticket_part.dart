import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/dashed_line.dart';
import 'package:ticket_app/base/widgets/ticket_semi_circle.dart';

class MiddleTicketPart extends StatelessWidget {
  const MiddleTicketPart({
    super.key,
    required this.boxHeight,
    required this.boxWidth,
  });

  final double boxHeight;
  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeight * 0.1,
      child: Row(
        children: [
          TicketSemiCircle(boxHeight: boxHeight, sideLeft: true),
          Expanded(child: Container()),
          DashedLine(
            boxWidth: boxWidth,
            dashWidth: 8,
            sizeDetm: 20,
            hPadding: 5,
          ),
          Expanded(child: Container()),
          TicketSemiCircle(
            boxHeight: boxHeight,
            sideLeft: false,
          ),
        ],
      ),
    );
  }
}
