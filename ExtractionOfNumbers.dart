/*
Problem Statement
  Ron is schizophrenic and sees random digits hidden in
  words. He thinks it means something and someone is
  secretly trying to communicate with him. He wants to
  extract those digits from the words and see if they
  form a message. Harry really wants to help him but
  couldn't think of a way. But, Harry finally realized
  that if he somehow helps Ron in extracting those
  digits, Ron would finally realize that they don't mean
  anything and are just his delusions. He asked Ron to
  write down all the words that he sees. Help Harry by
  extracting the digits from these words.

Input
  First line contains N, the number of words. Next line
  contains N space-separated words.

Output
  Print all the extracted digits separated by a space.

Constraints
  1<=N<=50 It is guaranteed that at least one digit will
  be present in the entire input.

Sample Input
  3
  1 L0v3 Dcoder

Sample Output
1 0 3
*/

import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  String input = stdin.readLineSync();
  
  var nums = '';
  var counter = 0;
  while (counter < input.length) {
    var counter2 = 0;
    while (counter2 < 10) {
      if (counter < input.length - 1) {
        if (counter2.toString() == input.substring(counter, counter + 1)) {
          var letter = counter2.toString();
          nums = nums + ' ' + letter;
        }
      } else {
        if (counter2.toString() == input.substring(counter)) {
          var letter = counter2.toString();
          nums = nums + ' ' + letter;
        }
      }
      ++counter2;
    }
    ++counter;
  }
  print(nums.trimLeft());
}