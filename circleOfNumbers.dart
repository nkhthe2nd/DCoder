import 'dart:io';

void main(List<String> args) {

  var input = stdin.readLineSync();
  var nLst = input.split(' ');
  var N = int.parse(nLst.elementAt(0));
  var X = int.parse(nLst.elementAt(1));

  if ((N / 2) < X) {
    print('${(((N / 2) + X) - N).toInt()}');
  } else {
    print('${((N / 2) + X).toInt()}');
  }

}