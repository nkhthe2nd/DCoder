/*
Problem Statement
  A word or a sentence is called a pangram if all the characters of
  this language appear in it at least once, either in lowercase or
  in uppercase. You are given a string S consisting of lowercase and
  uppercase English letters. If the string is a program, print "YES"
  else print "NO", without the double quotes.

Input
  A single string S.

Output
  Print "YES", if the string is a pangram, else print "NO".

Constraints
  1<=S.length<=100

Sample Input
  QuickWaftingZephyrsVexBoldJim

Sample Output
  YES
*/

import 'dart:io';

void main(List<String> args) {
  
  List alphaLst = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
                   'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
                   'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
                   'y', 'z'];

  List inputLst = List<String>();
  int numOfMatches = 0;

  var S = stdin.readLineSync();
  inputLst = S.split('');

  var inputCount = 0;
  while (inputCount < S.length) {
    var alphaCount = 0;
    String let = inputLst.elementAt(inputCount);
    while (alphaCount < alphaLst.length) {
      String alpha = alphaLst.elementAt(alphaCount);
      if (let == alpha || let == alpha.toUpperCase()) {
        alphaLst.removeAt(alphaCount);
      } 
      ++alphaCount;
    }
    ++inputCount;
  }

  if (alphaLst.length == 0) {
    print('YES');
  } else {
    print('NO');
  }
}