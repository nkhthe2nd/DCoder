/*
Problem Statement
  Cody loves even numbers. He was bored and decided to print all of the
  even numbers at the even indexes of an array(1-indexed). He wants your
  help to complete this task.

Input
  The first line of input contains an integer N denoting the size of an
  array. The second line contains N-space separated integers denoting
  the array.

Output
  Print all of the numbers separated by spaces that satisfies the
  conditions.

Constraints
  1<=N<=10^3 1<=ArrayElements<=10^5

Sample Input
  6
  2 3 5 4 7 8

Sample Output
  4 8
*/

import 'dart:io';

void main(List<String> args) {

  var N = int.parse(stdin.readLineSync());
  var arrayString = stdin.readLineSync();

  var strArray = arrayString.split(' ');
  List intArray = strArray.map(int.parse).toList();
  List newArray = [];

  var i = 0;
  while (i < N) {
    if (intArray[i] % 2 == 0 && (i + 1) % 2 == 0) {
      newArray.add(intArray[i]);
    }
    ++i;
  }

  var newString = '';
  for (var el in newArray) {
    newString = newString + ' ' + el.toString();
  }
  print(newString.trim());

}
