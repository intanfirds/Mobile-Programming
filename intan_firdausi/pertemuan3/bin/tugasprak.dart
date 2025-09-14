import 'dart:io';

void main() {
  // Map untuk menyimpan data mahasiswa dan nilai
  Map<String, int> nilaiMahasiswa = {};

  // Input data 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    int nilai = int.parse(stdin.readLineSync()!);

    // Masukkan ke Map
    nilaiMahasiswa[nama!] = nilai;
  }

  print("\n=== Hasil Kategori Kelulusan ===");
  // Menentukan kategori menggunakan if/else
  nilaiMahasiswa.forEach((nama, nilai) {
    String kategori;
    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60 && nilai <= 79) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }
    print("$nama: Nilai = $nilai, Kategori = $kategori");
  });
}
