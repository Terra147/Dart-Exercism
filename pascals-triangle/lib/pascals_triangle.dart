class PascalsTriangle {
  List<List<int>> rows(int numRows) {
    List<List<int>> triangle = [];

    for (int i = 0; i < numRows; i++) {
      List<int> row = List<int>.filled(i + 1, 0);
      row[0] = 1;
      row[i] = 1;
      for (int j = 1; j < i; j++) {
        row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
      }
      triangle.add(row);
    }

    return triangle;
  }
}
