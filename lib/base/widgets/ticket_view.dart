import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/base/styles.dart';
import 'package:ticket_app/base/widgets/custom_flight_visuals.dart';

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "NYC",
                          style: Styles.h3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "New-York",
                          style: Styles.h4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    const Text("Text"),
                    Expanded(child: Container()),
                    const Text("Text"),
                    Expanded(child: Container()),
                    // const Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     CustomFlightVisuals(),
                    //     // Text(
                    //     //   "8H 30M",
                    //     //   style: Styles.h4.copyWith(
                    //     //     color: Colors.white,
                    //     //     fontWeight: FontWeight.w400,
                    //     //   ),
                    //     // )
                    //   ],
                    // ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LDN",
                          style: Styles.h3.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "London",
                          style: Styles.h4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
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
                  SizedBox(
                    height: boxHeight * 0.1,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: boxHeight * 0.05,
                          decoration: const BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          // print("Width: ${constraints.constrainWidth().round()}");
                          return Flex(
                            direction: Axis.horizontal,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                              ((boxWidth - (boxHeight * 0.1)) / 18)
                                  .floor(), //Calc no. of lines
                              (index) => const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: SizedBox(
                                  width: 8,
                                  height: 2,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Styles.bgColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                        Expanded(child: Container()),
                        Container(
                          width: boxHeight * 0.05,
                          decoration: const BoxDecoration(
                            color: Styles.bgColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: boxHeight * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1 MAY",
                                style: Styles.h3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Date",
                                style: Styles.h4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomFlightVisuals(),
                              Text(
                                "08:00 AM",
                                style: Styles.h4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "23",
                                style: Styles.h3.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Number",
                                style: Styles.h4.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
