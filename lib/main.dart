import 'package:flutter/material.dart';
import 'quote.dart';

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
    Quote('Be yourself; everyone else is already taken', 'Oscar Wilde'),
    Quote('I have nothing to declare except my genius', 'Oscar Wilde'),
    Quote('The truth is rarely pure and never simple', 'Oscar Wilde'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[600], fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[900], fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    ));
  }
}
