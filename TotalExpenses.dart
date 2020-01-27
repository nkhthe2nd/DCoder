import 'dart:io';

void main(List<String> args) {

  var T = double.parse(stdin.readLineSync());
  const double discount = .10;
  var inArray = [];
  var outArray = [];

  var i = 0;
  while (i < T) {
    inArray.add(double.parse(stdin.readLineSync()));
    double total = 0.0;
    if (inArray[i] > 1000) {
      total = inArray[i] - (inArray[i] * discount);
    } else {
      total = inArray[i];
    }
    outArray.add(total);
    ++i;
  }

  for (var element in outArray) {
    print(element.toStringAsFixed(2));
  }

}
