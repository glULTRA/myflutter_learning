class Quote {
  String text;
  String author;
  Quote({this.text = '', this.author = ''});
  dynamic get getQuote => "$author: $text";
}
