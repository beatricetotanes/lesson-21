// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  // Since stateless widgets don't change, we need to put the 'final' keyword
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              //No need for the dollar sign and
              //curly braces because we're not outputting this in a string.
              // We're telling the Text widget to use this particular string directly.
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
