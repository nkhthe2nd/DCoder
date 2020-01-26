import 'dart:io';

void main(List<String> args) {

  var T = int.parse(stdin.readLineSync());
  List ints = [];

  var i = 0;
  while (i < T) {
    ints.add(stdin.readLineSync());
    ++i;
  }

  for (var element in ints) {
    var first = int.parse(element[0]);
    var last = int.parse(element[element.length - 1]);
    print(first + last);
  }

}
