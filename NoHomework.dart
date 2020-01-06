import 'dart:io';

void main(List<String> args) {
  
  var testCases = int.parse(stdin.readLineSync());
  
  var i = 0;
  while (i < testCases) { 
    var caseLength = int.parse(stdin.readLineSync());
    var numString = stdin.readLineSync();
    var numLst = numString.split(' ');
    numLst.sort();
    numString = '';
    for (var e in numLst.reversed) {
      numString = numString + e;
    }
    print(numString);
    ++i;
  }
}