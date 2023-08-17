class SumOfMultiples {
  int sum(List<int> items, int level) {
    List<int> result = [];
    int sum = 0;
    for (var item in items) {
      int i = 1;
      while (item * i < level) {
        result.add(item * i);
        i++;
      }
    }
    if (result.isNotEmpty) {
      result = result.toSet().toList();
      sum = result.reduce((a, b) => a + b);
    }
    return (sum);
  }
}
