import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket_app/base/styles.dart';

class CustomFlightVisuals extends StatelessWidget {
  const CustomFlightVisuals({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.circle_outlined),
        LayoutBuilder(builder: (BuildContext context, Constraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const SizedBox(
                width: 2,
                height: 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Styles.bgColor),
                ),
              ),
            ),
          );
        }),
        const Icon(Icons.flight),
        const Icon(FluentSystemIcons.ic_fluent_airplane_filled),
        const Row(
          children: [
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
          ],
        ),
        const Icon(Icons.circle_outlined),
      ],
    );
  }
}
