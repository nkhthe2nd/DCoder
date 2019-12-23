import 'dart:io';

void main(List<String> args) {
  
  var N = int.parse(stdin.readLineSync());
  var word = stdin.readLineSync();
  var wLst = word.split('');

  var a = 0;
  var newWord = '';
  while (a < N) {

    var b = 0;
    while (b < 3) {
      newWord = '$newWord' + '${wLst.elementAt(a)}';
      ++b;
    }

    ++a;

  }

  print(newWord);
  
}