import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Book Tickets",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange,
                    ),
                    // alignment: Alignment.center,
                    child: const Icon(
                      FluentSystemIcons.ic_fluent_access_time_filled,
                      size: 30,
                    ),

                    //Swap this with an image:
                    // child: Image(image: AssetImage("assets/images/logo.png")), //Must be set to the pugspec.ymal
                  )
                ],
              ),
              const SizedBox(height: 20),
              SearchBar(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                elevation: const WidgetStatePropertyAll(0),
                hintText: "Search",
                leading: const Icon(FluentSystemIcons.ic_fluent_search_regular),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
