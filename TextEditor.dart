import 'dart:io';

void main(List<String> args) {

  int input = int.parse(stdin.readLineSync());
  
  var i = 0;
  while (i < input) {
    var newString = '';
    var newInput = stdin.readLineSync();
    var inputLst = newInput.split(' ');
    for (var element in inputLst) {
      newString = newString + element.toUpperCase();
    }
    print(newString);
    ++i;
  }
}
