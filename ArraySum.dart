/*
Problem Statement
  You are given an integer array and you have to find the
  sum of the elements of the array and find the remainder
  when the sum is divided by the largest number of the
  array.

Input
  Fisrt line contains N, the number of elements. Next line
  contains N space separated integers (elements of the
  array).

Output
  Print the remainder when sum divided by the maximum
  element.

Constraints
  1<=n<=1000<=A(i)<=1000

Sample Input
  5
  12345

Sample Output
  0
  */

import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var L = stdin.readLineSync();
  var lLst = L.split(' ');

  var sum = 0;
  var nLst = List<int>();
  var a = 0;
  while (a < lLst.length) {

    var b = int.parse(lLst.elementAt(a));
    nLst.add(b);
    sum = sum + b;
    ++a;

  }

  var remainder = (sum % N);
  print(remainder);

}