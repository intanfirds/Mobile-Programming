import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  var list = List<int>.filled(5, 0);

  list[0] = 10;
  list[1] = 20;
  list[2] = 13;
  list[3] = 33;
  list[4] = 23;
  print("Data dalam list = $list");

  for (var i = 0; i <= 4; i++) {
    stdout.write("Data List ke-$i : ");
    var input = stdin.readLineSync();
    list[i] = int.parse((input == null || input.isEmpty) ? "0" : input);
  }
  print("Data dalam list = $list");
}
