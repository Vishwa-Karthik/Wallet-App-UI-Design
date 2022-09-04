// ignore_for_file: prefer_adjacent_string_concatenation, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color[500],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 15),
          const Text(
            "BALANCE",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 10),
          Text(
            "₹$balance",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),
          ),
          const SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '**** **** ****' + " " + cardNumber.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                "$expiryMonth/$expiryYear",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
