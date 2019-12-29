/*
Problem Statement
  Jose is from South America and hence. Spanish is his
  mother tongue. He wants to travel around the world and,
  therefore, decides to learn various languages, starting
  with English. He tries to learn the alphabetical order..
  You being a good teacher will help him do so. He said
  he would learn just by asking questions. You have to
  answer his questions. You have to answer his questions.
  You will be given a few characters. You need to arrange
  them in alphabetical order and print them. NOTE: Do not
  mind the case. (example: 'D' will come after 'a' in
  alphabetical order)

Input
  First line of input is N, the number of characters. Next
  line contains N space-separated characters.

Output
  Print the characters in ascending form.

Constraints
  1<=N<=26 It is guaranteed that no character will be
  repeated.

Sample Input
  4
  D c a M

Sample Output
  a c D M
*/

import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var chars = stdin.readLineSync();
  var charsLst = chars.split(' ');

  charsLst.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));

  var sortedChars = '';
  for (var element in charsLst) {
    sortedChars = sortedChars + ' ' + element;
  }

  print(sortedChars.trimLeft());

}