import 'dart:math';

class HighScores {
  List<int> scores = [];

  HighScores(this.scores);

  int latest() {
    return (scores.last);
  }

  int personalBest() {
    return (scores.reduce(max));
  }

  List<int> personalTopThree() {
    List<int> findTopThree = scores;

    findTopThree.sort((a, b) => b.compareTo(a));
    return (findTopThree.take(3).toList());
  }
}
