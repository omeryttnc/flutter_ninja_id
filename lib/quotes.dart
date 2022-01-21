import 'package:flutter/material.dart';
import 'package:ninja_id/data.dart';

import 'QUOTECARD.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Data> quotes = [
    Data(text: "text1", author: "author1"),
    Data(text: "text2", author: "author2"),
    Data(text: "text3", author: "author3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
            )).toList(),
      ),
    );
  }
}
