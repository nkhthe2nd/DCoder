import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var F = ((N * (9 / 5)) + 32);
  print(F.round());

}