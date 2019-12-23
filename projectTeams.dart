import 'dart:io';

void main(List<String> args) {

  var N = int.parse(stdin.readLineSync());
  var a = 3;  // number of students per group
  var g = 1;  // number of groups

  while (a <= (N ~/ 2)) {

    if ((N % a) == 0) {
      
      if ((N ~/ a) > g) {
        g = N ~/ a;
      }

    }

    a++;

  } 

  if (N == 0) {
    print('0');
  } else {
    print(g);
  }

}