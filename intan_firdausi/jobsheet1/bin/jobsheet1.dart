import 'dart:io';

import 'package:jobsheet1/jobsheet1.dart' as jobsheet1;

const String nama = 'Intan';

void main(List<String> arguments) {
  //print('Hello world: ${jobsheet1.calculate()}!');
  //satu line comment
  /*
  multi line comment
  banyak line comment
  */
  // Constanta dan Final
  final String nama2 = 'Firdausi';
  print("Nama saya $nama $nama2");

  // Tipe Data
  int umur = 20;
  double tinggi = 159;
  bool jenis_kelamin = false; // true = laki-laki, false = perempuan
  String alamat = 'Singosari, Kab. Malang';
  stdout.writeln('Umur saya $umur tahun');
  stdout.writeln('Tinggi saya $tinggi cm');
  stdout.writeln(
    'Jenis kelamin saya ${jenis_kelamin ? 'Laki-laki' : 'Perempuan'}',
  );
  /*
  if (jenis_kelamin==true) {
    stdout.writeln('Jenis kelamin saya Laki-laki');
  } else {
    stdout.writeln('Jenis kelamin saya Perempuan');
  }
  */
  stdout.writeln('Alamat saya $alamat');
  num nilai = 98;
  stdout.writeln('Nilai saya $nilai');
  dynamic bebas = "16";
  stdout.writeln('Nilai dari dynamic adalah $bebas');
  // String angka1 = "15";
  // int angka2 = int.parse(angka1);
  // int angka3 = bebas;

  // List
  List<String> hobi = ['Mendengarkan Musik', 'Tidur', 'Menonton'];
  hobi.add('Bermain Game');
  stdout.writeln('Hobi saya $hobi');

  // Map
  Map<String, String> data = {
    "nama": "Draco Malfoy",
    "alamat": "London, Inggris",
    "jenis_kelamin": "Laki-laki",
  };
  data["Pekerjaan"] = "Penyihir";
  data.addAll({"hobi": "Bermain Quidditch"});
  stdout.writeln("Data : $data");
  stdout.writeln("Nama yang ada di data adalah ${data['nama']}");

  // Try Catch
  try {
    // Code that may throw an error
    int result = 10 ~/ 0; // This will throw an IntegerDivisionByZeroException
  } on IntegerDivisionByZeroException {
    // Handles the specific exception IntegerDivisionByZeroException
    print('Cannot divide by zero!');
  } catch (e) {
    // Handles any other type of exception and provides the exception object/message
    print('An error occurred: $e');
  } finally {
    // Code that runs always executes, regardless of whether an exception occurred or not
    print('Execution completed.');
  }

  // Null Safety
  String? kendaraan;
  stdout.writeln("Kendaraan $kendaraan");
}
