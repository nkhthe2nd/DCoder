import 'dart:io';

void main(List<String> args) {

  var N = int.parse(stdin.readLineSync());
  String input = stdin.readLineSync();
  int diff = 0;
  List <String> inputLst = input.split(' ');
  List <int> intLst = inputLst.map(int.parse).toList();

  var e = 0;
  while (e < intLst.length) {
    var i = 0;
    while (i < intLst.length) {
      if (intLst.elementAt(e) - intLst.elementAt(i) > diff) {
        diff = intLst.elementAt(e) - intLst.elementAt(i);
      }
      ++i;
    }
  ++e;
  }

  print(diff);

}
