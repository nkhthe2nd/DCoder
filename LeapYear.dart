/*
Problem Statement
  Steve is playing a quiz game with his brother John. As Steve
  just learned the concept of leap year, John wanted to test his
  knowledge. For that, John started to ask Steve whether a year is
  a leap year or not by giving him a random year. Steve is a little
  confused and he asks for your help with the quiz.

Input
  The first line of input contains one integer T. Next T lines will
  have years given by John.

Output
  For each test case print "Yes" if it is a leap year, else "No".

Constraints
  1<=T<=100 10^3<=Year<=10^5.

Sample Input
  2
  2000
  2017

Sample Output
  Yes
  No
*/

import 'dart:io';

void main(List<String> args) {
  
  var T = int.parse(stdin.readLineSync());

  for (var i = 0; i < T; i++) {
    var isLeap = false;
    num year = num.parse(stdin.readLineSync());
    if (year % 4 == 0) {
      isLeap = true;
      if (year % 100 == 0) {
        isLeap = false;
        if (year % 400 == 0) {
          isLeap = true;
        } 
      }
    }

    if (isLeap == true) {
      print("Yes");
    } else {
      print("No");
    }

  }
}