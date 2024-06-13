import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/styles.dart';
import 'package:ticket_app/base/widgets/row_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

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
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Styles.h3),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Book Tickets", style: Styles.h1)
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
                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: Styles.bdRadius)),
                elevation: const WidgetStatePropertyAll(0),
                hintText: "Search",
                leading: const Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: Color(0xFFE6DE76),
                ),
              ),
              const SizedBox(height: 40),
              const RowDoubleText(
                bigTxt: "Upcomming Flights",
                btnTxt: "View all",
              ),
              // const SizedBox(height: 5),
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 20),
              TicketView(),
              SizedBox(width: 20),
              TicketView(),
              SizedBox(width: 20),
              TicketView(),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
