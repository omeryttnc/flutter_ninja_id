import 'package:flutter/material.dart';
import 'package:ninja_id/data.dart';

Card QuoteCard(quote, {required Function() delete}) {
  return Card(
    margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[800],
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          FlatButton.icon(
            onPressed: delete,
            icon: const Icon(Icons.delete),
            label: const Text('delete quotee'),
          ),
        ],
      ),
    ),
  );
}
