import 'dart:io';
import 'dart:math';

void main() {
  String result;
  int countNames = 0;
  int salary;
  int sum = 0;
  List<String> names = [];
  List<int> salaries = [];
  bool x = true;
  while (x) {
    print("please enter the doctror names");
    names.add(stdin.readLineSync()!);
    countNames++;
    print("Do you want to enter another doctor's name? (yes / no)");
    result = stdin.readLineSync()!;
    if (result.toLowerCase() == 'yes')
      continue;
    else if (result.toLowerCase() == 'no')
      x = false;
    else
      print("invalid");
  }
  print("please enter salary");

  for (int i = 0; i < names.length; i++) {
    salary = int.parse(stdin.readLineSync()!);
    if (salary > 0) {
      salaries.add(salary);
      print("the salary of doctor ${names[i]} is $salary");
      sum += salary;
    } else
      print("invalid");
  }
  var largest_value = salaries[0];
  var smallest_value = salaries[0];
  String doctorMax = names[0];
  String doctorMin = names[0];
  for (var i = 0; i < salaries.length; i++) {
    if (salaries[i] > largest_value) {
      largest_value = salaries[i];
      doctorMax = names[i];
    }
    if (salaries[i] < smallest_value) {
      smallest_value = salaries[i];
      doctorMin = names[i];
    }
  }

  print('''
total numbers $countNames 
 all salaries $sum 
  the AVG ${sum ~/ countNames} 
Smallest value in the list :${smallest_value}
Largest value in the list : ${largest_value}
the doctor with highest salary is $doctorMax with salary $largest_value
he doctor with lowest salary is $doctorMin with salary $smallest_value

''');
}
