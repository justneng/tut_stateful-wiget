class Quote {

  String text;
  String author;

  // Quote({String? text, String? author}) {
  //   this.text = text;
  //   this.author = author;
  // }

  // short-handed
  Quote({required this.text, required this.author});
}

// Quote quote1 = Quote(
//     text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.',
//     author: 'Nelson Mandela'
// );