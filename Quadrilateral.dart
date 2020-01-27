import 'dart:io';

void main(List<String> args) {

  var T = int.parse(stdin.readLineSync());
  const threeSixty = 360;
  List <int> angles = [];
  List <String> yesNo = [];

  var i = 0;
  while (i < T) {
    var input = stdin.readLineSync();
    angles = input.split(' ').map(int.parse).toList();
    var total = 0;
    for (var element in angles) {
      total = total + element;
    }
    if (total == threeSixty) {
      yesNo.add("YES");
    } else {
      yesNo.add("NO");
    }
    ++i;
  }

  for (var element in yesNo) {
    print(element);
  }

}
