class Raindrops {
  String convert(int number) {
    String str_for_return = '';

    if (number % 3 == 0) {
      str_for_return = str_for_return + 'Pling';
    }
    if (number % 5 == 0) {
      str_for_return = str_for_return + 'Plang';
    }
    if (number % 7 == 0) {
      str_for_return = str_for_return + 'Plong';
    }
    if (str_for_return == '') return (number.toString());
    return (str_for_return);
  }
}
