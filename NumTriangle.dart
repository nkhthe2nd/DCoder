import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());

  var a = '1';
  var i = 1;
  print(a);
  while (i < N) {
    ++i;
    a = a + ' ' + i.toString();
    print(a);
  }

}