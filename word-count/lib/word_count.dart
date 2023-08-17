import 'dart:collection';

class WordCount {
  Map<String, int> countWords(String str) {
    var cleanedSubtitle =
        str.replaceAllMapped(RegExp(r"[^\w\s']|'\B|\B'"), (match) => ' ');

    var words = cleanedSubtitle.toLowerCase().split(RegExp(r'\s+'));
    var wordCount = SplayTreeMap<String, int>();
    for (var word in words) {
      if (word.isNotEmpty) {
        wordCount[word] = (wordCount[word] ?? 0) + 1;
      }
    }

    return (wordCount);
  }
}
