import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String str_num) {
    BigInt result = BigInt.from(0);
    for (int i = 0; i < str_num.length; i++) {
      result = result + BigInt.from(pow(int.parse(str_num[i]), str_num.length));
    }
    return (result.toString() == str_num);
  }
}
