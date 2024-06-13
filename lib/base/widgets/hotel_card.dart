import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      color: Colors.black12,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          child: Image(
            width: 200,
            height: 200,
            image: AssetImage("assets/images/hotel_image_1.jpg"),
          ),
        ),
      ),
    );
  }
}
