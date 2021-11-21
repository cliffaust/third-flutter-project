import 'package:flutter/material.dart';
import "quotes.dart";

class QuoteCard extends StatelessWidget {

  final Quote quote;

  QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 20.0),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: RichText(
          text: TextSpan(
            text: quote.quote + ' - ',
            style: const TextStyle(
                fontFamily: "Montserrat",
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
            children: [
              TextSpan(
                  text: quote.author,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}