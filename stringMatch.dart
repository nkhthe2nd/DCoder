import 'dart:io';

void main(List<String> args) {
  var T = int.parse(stdin.readLineSync());
  var flag = 0;  // 0=noChange 1=Yes 2=No
  
  for (var i = 0; i < T; i++) {
 
    var sequence = stdin.readLineSync();
    var seqList = sequence.split(' ');
    String N = seqList.elementAt(0);
    String F = seqList.elementAt(1);
    List nLst = N.split('');
    List fLst = F.split('');

    if (N.length >= F.length) {
      
      var a = 0;
      var b = 0;
      while (a < ((N.length - F.length) +1) && b < F.length) {

        if (nLst.elementAt(a) == fLst.elementAt(b)) {
          flag = 1;
        } else {
          flag = 2;
        }

        switch (flag) {
          case 0:
            ++b;  
            break;
          case 1:
            ++a;
            ++b;
            break;
          default:
            b = 0;
            ++a;
        }
        
      }

      if (flag == 1 || flag == 0) {
        print('Yes');
      } else {
        print('No');
      }

    } else {
      print('no');
    }

  }
}
