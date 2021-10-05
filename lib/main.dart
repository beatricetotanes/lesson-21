// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // ".map" cycles through a list of data and for each item, it performs a function
        // you can return a value for each of those functions
        // the argument that is passed is the item in the list
        // Since the "children" property expects a list, so we use the method ".toList" because .map only returns an iterable
        // So it we now have a list of text widgets
        children: quotes.map((quote) {
          // If we're outputting a variable that requires a property, use curly braces.
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}
