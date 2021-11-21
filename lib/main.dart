import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(const MaterialApp(home: Quotes()));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(quote: "The greatest glory in living lies not in never falling, but in rising every time we fall", author: "Nelson Mandela"),
    Quote(quote: "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking", author: "Steve Jobs"),
    Quote(quote: "If life were predictable it would cease to be life, and be without flavor", author: "Eleanor Roosevelt"),
    Quote(quote: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success", author: "James Cameron"),
  ];

  Widget quoteTemplate(quote) {
    return Card(
        margin: const EdgeInsets.only(top: 20.0),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          children:
           quotes.map((e) => quoteTemplate(e)).toList()
        ),
      ),
    );
  }
}
