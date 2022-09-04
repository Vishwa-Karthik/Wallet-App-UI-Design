// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/pages/my_button.dart';
import 'package:wallet_ui/pages/my_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple[200],
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
            iconSize: 50,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            iconSize: 50,
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: GoogleFonts.actor(
                          textStyle: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                      ),
                      Text(
                        " Cards",
                        style: GoogleFonts.actor(
                          textStyle: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        shape: BoxShape.circle),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),

            // space
            const SizedBox(
              height: 25,
            ),

            // cards
            Container(
              height: 200,
              child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                        balance: 1072000,
                        cardNumber: 7890,
                        expiryMonth: 12,
                        expiryYear: 29,
                        color: Colors.deepPurple),
                    MyCard(
                        balance: 9055000,
                        cardNumber: 3456,
                        expiryMonth: 10,
                        expiryYear: 12,
                        color: Colors.deepOrange),
                    MyCard(
                        balance: 22,
                        cardNumber: 1278,
                        expiryMonth: 09,
                        expiryYear: 22,
                        color: Colors.lightGreen),
                  ]),
            ),

            // space
            const SizedBox(
              height: 15,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotColor: Colors.deepPurple.shade400,
              ),
            ),

            // space
            const SizedBox(
              height: 55,
            ),

            // 3 buttons -> send / pay / bills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // send button
                MyButton(iconImage: 'resources/send.png', buttonText: "SEND"),
                // pay button
                MyButton(
                    iconImage: 'resources/recieved.png', buttonText: "RECEIVE"),

                // bills button
                MyButton(
                    iconImage: 'resources/invoice.png', buttonText: "INVOICE"),
              ],
            ),

            const SizedBox(
              height: 39,
            ),

            // column -> stats / transaction

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // statistics
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // icon
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(18),
                            ),
                            height: 70,
                            child: Image.asset('resources/statistics.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STATISTICS",
                                style: GoogleFonts.actor(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Text("PAYMENTS"),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // transaction
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // icon
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[100],
                              borderRadius: BorderRadius.circular(18),
                            ),
                            height: 70,
                            child: Image.asset('resources/transaction.png'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TRANSACTIONS",
                                style: GoogleFonts.actor(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22)),
                              ),
                              Text("TO & FROM"),
                            ],
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_outlined),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
