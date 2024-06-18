import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_2.dart';

class TicketBottonPart extends StatelessWidget {
  const TicketBottonPart({
    super.key,
    required this.boxHeight,
  });

  final double boxHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: boxHeight * 0.45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 60,
                  child: TextStyle2(text: "1 MAY"),
                ),
                Expanded(child: Container()),
                const TextStyle2(text: "08:00 AM"),
                Expanded(child: Container()),
                const SizedBox(
                  width: 60,
                  child: TextStyle2(
                    text: "23",
                    isAlignEnd: true,
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 66,
                  child: TextStyle2(
                    text: "Date",
                    headerType: 4,
                  ),
                ),
                TextStyle2(
                  text: "Departure time",
                  headerType: 4,
                ),
                SizedBox(
                  width: 66,
                  child: TextStyle2(
                    text: "Number",
                    headerType: 4,
                    isAlignEnd: true,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
