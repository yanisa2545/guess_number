import 'dart:io';
import 'package:guess_number/game.dart';
void main() {
  var game = Game();
  int result = 0;
  do {
    stdout.write('Please guess the number between 1 and 100 : '); //UX = User Experience
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print('Please enter number only');
      continue;
    }
    result = game.doGuess(guess);
    if (result == 3) {
      stdout.write('Game Over : ');
    }
  } while (result != 1);
    int re = 0;
    var t = 0;
    do {
      print('เล่นต่อ yes / ไม่เล่นต่อ no');
      stdout.write('Do you keep playing : ');
      var over = stdin.readLineSync();
      if (over == 'yes') {
        var g = Game();
        do {
          stdout.write('Please guess the number between 1 and 100 : ');
          var input = stdin.readLineSync();
          var guess1 = int.tryParse(input!);
          if (guess1 == null) {
            print('Please enter number only');
            continue;
          }
          re = g.doGuess(guess1);
        }
        while(re != 1);
        }
      else{t = 1;
      }
        }
    while(t == 0);
        }

