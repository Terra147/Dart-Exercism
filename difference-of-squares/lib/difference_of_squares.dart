import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int number) {
    int sum = 0;
    for (int i = 1; i <= number; i++) {
      sum = sum + i;
    }
    int result = pow(sum, 2).toInt();
    return (result);
  }

  int sumOfSquares(int number) {
    int result = 0;
    for (int i = 1; i <= number; i++) {
      result = result + pow(i, 2).toInt();
    }
    return (result);
  }

  int differenceOfSquares(int number) {
    return (squareOfSum(number) - sumOfSquares(number));
  }
}
