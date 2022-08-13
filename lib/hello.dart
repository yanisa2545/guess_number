import 'dart:io';
import 'package:guess_number/game.dart';
void main() {
  var game = Game();
  int re1 = 0;
  List<int> myList = [];
  int fail = 1;
  do {
    stdout.write('Please guess the number between 1 and 100 : '); //UX = User Experience
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print('Please enter number only');
      continue;
    }
    re1 = game.doGuess(guess);
    if (re1 == 0) {
      fail++;
    }
  } while (re1 != 1);
    myList.add(fail);
    int re2 = 0;
    var t = 0;
    do {
      print('เล่นต่อ yes / ไม่เล่นต่อ no');
      stdout.write('Do you keep playing : ');
      var over = stdin.readLineSync();
      if (over == 'yes') {
        var g2 = Game(maxRandom: 1000);
        int fail1 = 1;
        do {
          stdout.write('Please guess the number between 1 and 100 : ');
          var input = stdin.readLineSync();
          var guess1 = int.tryParse(input!);
          if (guess1 == null) {
            print('Please enter number only');
            continue;
          }
          re2= g2.doGuess(guess1);
          if (re2 == 0) {
            fail1++;
          }
        }
        while(re2 != 1);
        myList.add(fail1);
        }
      else if(over == 'no') {
        t = 1;
      }
      else{
        t = 2;
        stdout.write('Do you keep playing : ');
        var over = stdin.readLineSync();
        if (over == 'yes') {
          t = 0;
          var g2 = Game(maxRandom: 1000);
          do {
            stdout.write('Please guess the number between 1 and 100 : ');
            var input = stdin.readLineSync();
            var guess1 = int.tryParse(input!);
            if (guess1 == null) {
              print('Please enter number only');
              continue;
            }
            re2 = g2.doGuess(guess1);

          }
          while(re2 != 1);

        }

        else if(over == 'no') {
          t = 1;
        }
        else{
          t = 2;
        }
        while(t == 0);
      }
        }
    while(t == 0);
    var all = myList.length;
      print('you are play $all game');
      for(int i=0; i<myList.length; i++){
        print('Game #${i+1} :  '+'$all Guesses');
    }
        }



