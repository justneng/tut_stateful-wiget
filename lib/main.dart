import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall.',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'),
    Quote(
        text:
            'Your time is limited, so don\'t waste it living someone else\'s life. Don\'t be trapped by dogma – which is living with the results of other people\'s thinking.',
        author: 'Steve Jobs')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Column(
          children: quotes
              .map((e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      quotes.remove(e);
                    });
                  }))
              .toList()),
    );
  }
}
