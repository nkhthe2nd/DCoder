import 'dart:io';

void main(List<String> args) {
  
  var N = stdin.readLineSync();
  List nLst = N.split(' ');

  num numerator = int.parse(nLst.elementAt(0));
  num denominator = int.parse(nLst.elementAt(1));

  if (numerator * 2 == denominator) {
    numerator = 1;
    denominator = 2;
  } else {
    var i = 2;
    while (i <= numerator) {
      if (numerator % i == 0 && denominator % i == 0) {
        numerator = numerator / i;
        denominator = denominator / i;
        i = 2;
        continue;
      }
      ++i;
    }
  }
  
  print(numerator.toInt().toString() + ' ' + denominator.toInt().toString());

}