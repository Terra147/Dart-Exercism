class Bob {
  String response(String str) {
    if (RegExp(r'^[A-Z\s]+\?$').hasMatch(str)) {
      return ('Calm down, I know what I\'m doing!');
    } else if (RegExp(r'\?$').hasMatch(str)) {
      return ('Sure.');
    } else if (RegExp(r'^[A-Z\s]+$').hasMatch(str)) {
      return ('Whoa, chill out!');
    } else if (RegExp(r'^\s*$').hasMatch(str)) {
      return ('Fine. Be that way!');
    } else {
      return ('Whatever.');
    }
  }
}
