class Forth {
  var stack = <int>[];
  Map<String, List<String>> definitions = {};

  void evaluate(String str) {
    final splited = str.split(' ');
    if (splited[0] == ':' && splited.last == ';') {
      List<String> str_sub = splited.sublist(2, splited.length - 1);
      for (int i = 0; i < str_sub.length; i++) {
        for (var key in definitions.keys) {
          if (str_sub[i].contains(key)) {
            str_sub.removeAt(i);
            str_sub.insertAll(i, definitions[key]!.toList());
            break;
          }
        }
      }
      definitions[splited[1]] = str_sub;
    } else {
      if (definitions.isNotEmpty) {
        for (var i = 0; i < splited.length; i++) {
          for (var key in definitions.keys) {
            if (splited[i].contains(key)) {
              splited.removeAt(i);
              splited.insertAll(i, definitions[key]!.toList());
              break;
            }
          }
        }
      }
      operator(splited);
    }
  }

  void operator(List<String> splited) {
    for (int i = 0; i < splited.length; i++) {
      if (int.tryParse(splited[i]) != null) {
        stack.add(int.parse(splited[i]));
      } else if (splited[i] == '+') {
        try {
          stack[stack.length - 2] = stack[stack.length - 2] + stack.last;
          stack.removeLast();
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i] == '-') {
        try {
          stack[stack.length - 2] = stack[stack.length - 2] - stack.last;
          stack.removeLast();
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i] == '*') {
        try {
          stack[stack.length - 2] = stack[stack.length - 2] * stack.last;
          stack.removeLast();
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i] == '/') {
        try {
          if (stack.last == 0) {
            throw Exception('Division by zero');
          }
          stack[stack.length - 2] =
              (stack[stack.length - 2] / stack.last).toInt();
          stack.removeLast();
        } catch (e) {
          print(e);
          stack.clear();
        }
      } else if (splited[i].toUpperCase() == 'DUP') {
        try {
          stack.add(stack.last);
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i].toUpperCase() == 'DROP') {
        try {
          stack.removeLast();
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i].toUpperCase() == 'SWAP') {
        try {
          int temp;
          temp = stack[stack.length - 2];
          stack[stack.length - 2] = stack.last;
          stack.last = temp;
        } catch (e) {
          stack.clear();
        }
      } else if (splited[i].toUpperCase() == 'OVER') {
        try {
          stack.add(stack[stack.length - 2]);
        } catch (e) {
          stack.clear();
        }
      }
    }
  }
}
