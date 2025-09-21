import 'dart:ffi';
import 'dart:io';

import 'package:pertemuan4/pertemuan4.dart' as pertemuan4;

void main(List<String> arguments) {
  // print('Hello world: ${pertemuan4.calculate()}!');

  // Belajar Fixed List
  // var list = List<int>.filled(5, 0);

  // list[0] = 10;
  // list[1] = 20;
  // list[2] = 13;
  // list[3] = 33;
  // list[4] = 23;
  // print("Data dalam list = $list");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   list[i] = int.parse((input == null || input.isEmpty) ? "0" : input);
  // }
  // print("Data dalam list = $list");

  // var grow = [];
  // grow.add(20);
  // grow.add(40);
  // grow.add(55);
  // grow.add(60);
  // grow.remove(55);
  // grow.add(10);

  // print("Data dalam list = $grow");

  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Data List ke-$i : ");
  //   var input = stdin.readLineSync();
  //   grow.add(int.parse((input == null || input.isEmpty) ? "0" : input));
  // }
  // print("Data dalam list = $grow");

  // var grow = [];
  // for (var i = 0; i <= 4; i++) {
  //   stdout.write("Masukkan list ke-$i : ");
  //   var input = stdin.readLineSync();
  //   if (input != null) {
  //     grow.add(input);
  //     print("Data data index ke: $i ${grow[i]}");
  //   }
  // }
  // print("Data dalam list = $grow");

  // var angka = <int>{1, 2, 3, 3, 4};
  // stdout.writeln("Set angka ; $angka");
  // print("Elemen ke-2 : ${angka.elementAt(1)}");

  // var angka2 = <int>{4, 5, 6, 7, 8};
  // print("data union adalah= ${angka.union(angka2)}");
  // print("Data insersection adalah = ${angka.intersection(angka2)}");

  // Belajar Map
  // var biodata = {
  //   "nim": "2341760183",
  //   "nama": "Intan Firdaus",
  //   "jurusan": "Teknologi Informasi",
  // };
  // biodata["angkatan"] = "2023"; //menambahkan data
  // print("Biodata mahasiswa $biodata");
  // // // Cetak nama saja
  // print("Biodata mahasiswa dengan nama = ${biodata['nama']}");

  // Record (Mengumpulkan data dalam satu ringkasan)
  // var mahasiswa = ("Luqman", 40, true);
  // print("Ini adalah data Pak Luqman $mahasiswa");
  // print("Mahasiswa = ${mahasiswa.$1}");

  // var bio = (nama: "Intan", umur: 20, gender: true);
  // print("Biodata sata $bio");
  // print("Nama saya ${bio.nama}");

  // tampil("Intan", 20, "Malang");
  // tampil("Luqman", 21);

  // Anonymous Function
  var nilai = [90, 80, 70, 100];
  nilai.forEach((angka) {
    print("Nilai = $angka");
  });
}

// // Function Parameter
// void tampil(String nama, int umur, [String? alamat]) {
//   print("Nama : $nama");
//   print("Umur : $umur");
//   if (alamat != null) {
//     print("Alamat : $alamat");
//   } else {
//     print("Alamat : -");
//   }
// }
