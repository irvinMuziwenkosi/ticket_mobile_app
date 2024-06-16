import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/base/widgets/middle_ticket_part.dart';
import 'package:ticket_app/base/widgets/ticket_bottom_part.dart';
import 'package:ticket_app/base/widgets/top_ticket_part.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final boxWidth = screenSize.width * 0.85;
    final boxHeight = boxWidth * (9 / 16);
    return SizedBox(
      width: boxWidth,
      height: boxHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFF576697),
              ),
              height: boxHeight * 0.45,
              child: TopTicketPart(boxWidth: boxWidth),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color(0xFFEE7D61),
              ),
              height: boxHeight * 0.55,
              child: Column(
                children: [
                  MiddleTicketPart(boxHeight: boxHeight, boxWidth: boxWidth),
                  TicketBottonPart(boxHeight: boxHeight),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
