import 'dart:io';

void main(List<String> args) {
  
  var input = stdin.readLineSync();
  var word = input.substring(0, 1);
  int num = 3;
  word = word + input.substring(1, 2);
  word = word + num.toString();
  print(word);

}