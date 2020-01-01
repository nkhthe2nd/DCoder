import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var input = stdin.readLineSync();

  List inputLst = input.split(' ');
  List inputIntLst = List<int>();
  for (var element in inputLst) {
    var newInt = int.parse(element);
    inputIntLst.add(newInt);
  }

  bool isNatural = true;
  for (var element in inputIntLst) {
    if (element <= 0) {
      isNatural = false;
      break;
    }
  }

  if (isNatural) {
    print('Yes');
  } else {
    print('No');
  }

}