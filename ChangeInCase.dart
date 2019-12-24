/*
Problem Statement
  You will be given a single string and two positive
  integers denoting indices. You need to change the
  case of the characters at those indices,i.e change
  uppercase to lowercase and lowercase to uppercase. It
  is guaranteed that all characters in the string are
  alphabets.

Input
  The first line contains N, the length of string. The next
  line contains a single string. Two integers, x and y, in
  next line separated by space.

Output
  Print the string after altering the case of characters
  at those indices.typedef

Constraints
  1<=string.length<=400<=x,y<=string.length

Sample Input
  6
  Dcoder
  0 3

Sample Output
dcoDer
*/

import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var word = stdin.readLineSync();
  var XY = stdin.readLineSync();
  
  var x = int.parse(XY.substring(0, 1));
  var y = int.parse(XY.substring(2));
  
  var let1 = word.substring(x, (x + 1));
  var let2 = '';
  if (y == N - 1) {
    let2 = word.substring(y);
  } else {
    let2 = word.substring(y, (y + 1));
  }

  if (let1 == let1.toUpperCase()) {
    let1 = let1.toLowerCase();
  } else {
    let1 = let1.toUpperCase();
  }

  if (let2 == let2.toUpperCase()) {
    let2 = let2.toLowerCase();
  } else {
    let2 = let2.toUpperCase();
  }

  
  var counter = 0;
  var newWord = '';
  while (counter < N) {
    if (counter < N - 1) {
      if (counter == x) {
        newWord = newWord + let1;
      }
      if (counter == y) {
        newWord = newWord + let2;
      } else if (counter != x) {
        newWord = newWord + word.substring(counter, counter + 1);
      }
    } else {
      if (counter == x) {
        newWord = newWord + let1;
      }
      if (counter == y) {
        newWord = newWord + let2;
      } else if (counter != x) {
        newWord = newWord + word.substring(counter);
      }
    }
    ++counter;
  }

  print(newWord);

}