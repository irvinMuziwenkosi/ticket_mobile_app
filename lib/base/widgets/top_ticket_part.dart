import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';
import 'package:ticket_app/base/widgets/dashed_line.dart';
import 'package:ticket_app/base/widgets/text_style_2.dart';

class TopTicketPart extends StatelessWidget {
  const TopTicketPart({
    super.key,
    required this.boxWidth,
  });

  final double boxWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "NYC",
                style: Styles.h3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(child: Container()),
              Container(
                // padding: const EdgeInsets.all(4),
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.5, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: DashedLine(
                          boxWidth: boxWidth, dashWidth: 2, sizeDetm: 35),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_airplane_filled,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.5, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Expanded(child: Container()),
              Text(
                "LDN",
                style: Styles.h3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 80,
                  child: TextStyle2(
                    text: "New-York",
                    headerType: 4,
                  )),
              TextStyle2(text: "08 30M"),
              SizedBox(
                width: 80,
                child: TextStyle2(
                  text: "London",
                  headerType: 4,
                  isAlignEnd: true,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
