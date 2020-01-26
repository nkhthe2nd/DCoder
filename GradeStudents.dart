/*
Problem Statement
  In DCoder school, a student will pass if he/she satisfies the
  following criteria:
    1. If he/she gets more than 70 marks in Mathmatics.
    2. If he/she gets more than 50 marks in Algorithms.
  Given the marks of Mathmatics and Algorithms, print whether
  the student is passing or not.

Input
  The first line contains an integer T denoting total number
  of test cases. Then in the next following T lines, each line
  contains 2 numbers which denote the marks in Mathmatics and
  Algorithms respectively.

Output
  For each test case, print "Pass" if all of the conditions
  are satisfied else print "Fail".

Constraints
  1<=T<=10  1<=Marks<=100

Sample Input
  2
  80 80
  70 60

Sample Output
  Pass
  Fail
*/

import 'dart:io';

void main(List<String> args) {

  var T = int.parse(stdin.readLineSync());
  var grades = List();

  var i = 0;
  while (i < T) {
    grades.add(stdin.readLineSync());
    ++i;
  }

  for (var e in grades) {
    List grade = e.split(' ');
    if (int.parse(grade[0]) > 70 && int.parse(grade[1]) > 50) {
      print("Pass");
    } else {
      print("Fail");
    }
  }

}
