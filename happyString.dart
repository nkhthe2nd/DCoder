import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());

  List nList = ['a', 'b', 'c', 'd', 'e', 'f',
  'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
  'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
  'y', 'z'];

  var happyString = '';
  --N;

  while (N >= 0) {
    happyString = happyString + nList.elementAt(N);
    --N;
  }

  print(happyString);

}