class RnaTranscription {
  String toRna(String dna) {
    String rna = '';
    for (var i = 0; i < dna.length; i++) {
      if (dna[i] == 'G')
        rna += 'C';
      else if (dna[i] == 'C')
        rna += 'G';
      else if (dna[i] == 'T')
        rna += 'A';
      else if (dna[i] == 'A') rna += 'U';
    }
    return (rna);
  }
}
