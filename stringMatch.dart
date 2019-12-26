import 'dart:io';

void main(List<String> args) {
  var T = int.parse(stdin.readLineSync());
  
  for (var i = 0; i < T; i++) {
 
    var sequence = stdin.readLineSync();
    var seqList = sequence.split(' ');
    String N = seqList.elementAt(0);
    String F = seqList.elementAt(1);

    if (N.contains(F)) {
      print("Yes");
    } else {
      print("No");
    }

  }
}
