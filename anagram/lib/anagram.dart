class Anagram {
  List<String> findAnagrams(String target, List<String> strs) {
    var targetSorted = target.toLowerCase().split('')..sort();
    List<String> result = [];
    for (var str in strs) {
      if (target.toLowerCase() == str.toLowerCase()) {
        continue;
      }
      var strSorted = str.toLowerCase().split('')..sort();
      if (listEquals(strSorted, targetSorted)) {
        result.add(str);
      }
    }
    return (result);
  }

  bool listEquals(List<String> a, List<String> b) {
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
