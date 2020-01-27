import 'dart:io';

void main(List<String> args) {

  var N = int.parse(stdin.readLineSync());
  var A = stdin.readLineSync();
  List <int> intArray = A.split(' ').map(int.parse).toList();
  var totalPrime = 0;
  var isPrime = true;

  for (var element in intArray) {

    isPrime = true;

    if (element == 1) {
      isPrime = false;
    }

    var i = 2;
    while (i < element) {
      if (element % i == 0) {
        isPrime = false;
        break;
      } else {
        if (element < 2) {
          isPrime = false;
          break;
        } else {
          isPrime = true;
        }
      }
      ++i;
    }

    if (isPrime) {
      ++totalPrime;
    }

  }

  print(totalPrime);

}
