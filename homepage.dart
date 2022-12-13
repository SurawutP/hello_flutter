import 'dart:io';
import 'dart:math';

import 'package:untitled6/page.dart';

void main() {
  var r = Random();
  int count = 0;
  var answer = r.nextInt(100) + 1;
  int numm = 0;
  print("++++++++++++++++++++++++++++++++++++++++++++++");
  print("                PLAY THE GAME                 ");
  print("++++++++++++++++++++++++++++++++++++++++++++++");
  for (int i = 0 ; ; i++) {
    if (count==1) {
      break;
    }
    stdout.write('Guess the number between 1 and 100 : ');


    var input = stdin.readLineSync();

    if (input == null) {

      continue;
    }
    var guess = int.tryParse(input);

    if (guess == null) {

      continue;
    } else {
      if (guess > answer) {
        print("$guess is Too High!");

        numm += 1;

        count = 0;
      } else if (guess < answer) {
        print("$guess is Too Low!");

        numm += 1;
        count = 0;
      } else {
        print("$guess is Correct ❤, total guesses: $numm");
        print("You want to play game again?");
        print("Please enter Y or N");
        var inpu = stdin.readLineSync();

        if (inpu=='Y') {
          continue;
        }else if (inpu=='N'){
            print("++++++++++++++++++++++++++++++++++++++++++++++");
            print("                  END GAME                    ");
            print("++++++++++++++++++++++++++++++++++++++++++++++");
          count = 1;
        }
    }
  }
  }
}
