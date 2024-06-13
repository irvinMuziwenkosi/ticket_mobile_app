import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class CustomFlightVisuals extends StatelessWidget {
  const CustomFlightVisuals({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Icon(Icons.circle_outlined),
        Row(
          children: [
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
          ],
        ),
        Icon(Icons.flight),
        Icon(FluentSystemIcons.ic_fluent_airplane_filled),
        Row(
          children: [
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
            Icon(Icons.circle, size: 2),
          ],
        ),
        Icon(Icons.circle_outlined),
      ],
    );
  }
}
