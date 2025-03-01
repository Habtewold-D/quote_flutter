import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      text: 'Be yourself; everyone else is already taken',
      author: 'Oscar Wilde',
    ),
    Quote(
      text: 'I have nothing to declare except my genius',
      author: 'Oscar Wilde',
    ),
    Quote(
      text: 'The truth is rarely pure and never simple',
      author: 'Oscar Wilde',
    ),
  ];

  // The delete function takes a Quote object and removes it from the list
  void delete(Quote quote) {
    setState(() {
      quotes.remove(quote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children:
            quotes
                .map(
                  (quote) =>
                      QuoteCard(quote: quote, delete: () => delete(quote)),
                )
                .toList(),
      ),
    );
  }
}
