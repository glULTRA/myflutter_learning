import 'package:flutter/material.dart';
import 'quote.dart';

// ignore: camel_case_types
class Quote_card extends StatelessWidget {
  const Quote_card({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  final Quote quote;
  final Function() delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            // ignore: deprecated_member_use
            FlatButton.icon(
              onPressed: delete,
              
              color: Colors.grey[50],
              label: Text(
                "Delete",
                style: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
              icon: Icon(
                Icons.delete,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
