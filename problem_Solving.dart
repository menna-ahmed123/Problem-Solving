import 'dart:io';
import 'dart:math';

//ps1

void main() {
  Random random = Random();

  int c1 = 0;
  int c2 = 0;
  int sum;
  while (true) {
    int x = random.nextInt(10) + 1;
    int y = random.nextInt(10) + 1;
    print("$x + $y =   ");
    sum = int.parse(stdin.readLineSync()!);
    if (sum == x + y) {
      print(" Correct Answer $sum");
      c1++;
    } else {
      print("wrong answer the correct is ${x + y}");
      c2++;
    }
    String ask;
    print("Do you want to continue");
    ask = stdin.readLineSync()!;
    if (ask == "yes")
      continue;
    else if (ask == "no") {
      print("Total number of correct answers $c1");
      print("Total number of wrong answers $c2");
      break;
    } else {
      print("invalid response");
    }
  }
}



  //ps2
/*
  void main() {
    Random random = Random();

    List<String> operations = ['+', '-', '*', '/'];
    int correct = 0;
    int useranswer = 0;
    int c1 = 0;
    int level = 1;
    while (true) {
      int range = level * 10;
      int x = random.nextInt(range) + 1;
      int y = random.nextInt(range) + 1;
      int pickOp = random.nextInt(operations.length);
      String op = operations[pickOp];
      if (op == '+') {
        correct = x + y;
      } else if (op == '-') {
        correct = x - y;
      } else if (op == '*') {
        correct = x * y;
      } else if (op == '/') {
        correct = x ~/ y;
      } else
        print("wrong value");

      useranswer = int.parse(stdin.readLineSync()!);
      if (useranswer == correct) {
        level++;
        c1++;
      }
      String ask;
      print("Do you want to continue");
      ask = stdin.readLineSync()!;
      if (ask == "yes")
        continue;
      else if (ask == "no") {
        print("Total number of correct answers $c1");
        //print("Total number of wrong answers $c2");
      }
    }
  }
  */


