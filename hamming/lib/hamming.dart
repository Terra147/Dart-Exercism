class Hamming {
  int distance(String dna1, String dna2) {
    int count = 0;

    try {
      if (dna1.length != dna2.length) {
        throw Exception(
            'an ArgumentError with the message "strands must be of equal length"');
      }
      for (var i = 0; i < dna1.length; i++) {
        if (dna1[i] != dna2[i]) count++;
      }
      return (count);
    } catch (e) {
      print(e);
      return (0);
    }
  }
}
