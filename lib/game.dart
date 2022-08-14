import 'dart:math';
class Game {
  int answer = 0; //instance field
  Game({int maxRandom = 100}) {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
    print('answer is $answer');
  }
  int doGuess(int num) {
    if (num > answer) {
      print('$num is Too high');
      return 0;
    }
    else if (num < answer) {
      print('$num is Too low');
      return 0;
    }
    else {
      print('$num is correct');
      return 1;
    }
  }
}
