int score(String str) {
  int point = 0;
  for (int i = 0; i < str.length; i++) {
    if ("AEIOULNRST".contains(str[i].toUpperCase()))
      point = point + 1;
    else if ("DG".contains(str[i].toUpperCase()))
      point = point + 2;
    else if ("BCMP".contains(str[i].toUpperCase()))
      point = point + 3;
    else if ("FHVWY".contains(str[i].toUpperCase()))
      point = point + 4;
    else if ("K".contains(str[i].toUpperCase()))
      point = point + 5;
    else if ("JX".contains(str[i].toUpperCase()))
      point = point + 8;
    else if ("QZ".contains(str[i].toUpperCase())) point = point + 10;
  }
  return (point);
}
