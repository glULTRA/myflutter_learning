import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

dynamic main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  int count = 0;
  List<Quote> quotes = [
    Quote(text: "I'm Good", author: 'ULTRA'),
    Quote(text: "I'm Cool", author: 'Yad'),
    Quote(text: 'Knock Knock', author: 'Saman'),
  ];

  TextStyle ultSyle(double fontSize) {
    return TextStyle(
      color: Colors.grey[400],
      fontSize: fontSize,
      letterSpacing: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.grey[850],
        appBar: AppBar(
          //backgroundColor: Colors.grey[900],
          //foregroundColor: Colors.white,
          title: const Text("My App"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //const Center(
                //  child: CircleAvatar(
                //    backgroundImage: AssetImage('images/man.jpg'),
                //    radius: 75,
                //  ),
                //),
                //Divider(height: 90.0, color: Colors.grey[400]),
                //Text('Name', style: ultSyle(30.0)),
                //const SizedBox(height: 10),
                //Text(
                //  'Mohammed Khalid',
                //  style: TextStyle(
                //    color: Colors.amber[400],
                //    fontSize: 30.0,
                //    fontWeight: FontWeight.bold,
                //  ),
                //),
                //const SizedBox(height: 10),
                //Text('You clicked me $count times!', style: ultSyle(15)),
                const SizedBox(height: 10),
                Column(
                  children: quotes
                      .map(
                        (quote) => Quote_card(
                          quote: quote,
                          delete: () {
                            setState(() {
                              quotes.remove(quote);
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              quotes.add(Quote(
                  author: 'Jack sparrow', text: 'Dont forget to say captian!'));
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.green[100],
          ),
        ),
      ),
    );
  }
}
