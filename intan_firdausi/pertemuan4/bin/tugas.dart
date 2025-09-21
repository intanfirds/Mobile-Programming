import 'dart:io';

void utama() {
  // 1. Daftar Nama Mahasiswa (Growable List)
  print("=== Bagian 1: Daftar Nama Mahasiswa ===");
  List<String> daftarNama = [];

  stdout.write("Berapa banyak mahasiswa yang akan didaftarkan? ");
  int total = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= total; i++) {
    stdout.write("Nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();
    if (nama != null && nama.trim().isNotEmpty) {
      daftarNama.add(nama);
    }
  }

  print("Seluruh Nama Mahasiswa: $daftarNama");
  print("Total Entri: ${daftarNama.length}\n");

  // 2. Operasi Himpunan (Union & Intersection)
  print("=== Bagian 2: Operasi Himpunan ===");
  Set<int> himpunanX = {10, 20, 30, 40};
  Set<int> himpunanY = {30, 40, 50, 60};
  print("Himpunan X: $himpunanX");
  print("Himpunan Y: $himpunanY");
  print("Gabungan (Union): ${himpunanX.union(himpunanY)}");
  print("Irisan (Intersection): ${himpunanX.intersection(himpunanY)}\n");

  // 3. Katalog Produk
  print("=== Bagian 3: Katalog Produk ===");
  Map<String, Map<String, dynamic>> produk = {
    "PRD001": {"nama": "Robux 200", "harga": 27000},
    "PRD002": {"nama": "Robux 150", "harga": 20000},
    "PRD003": {"nama": "Robux 100", "harga": 15000},
  };

  produk.forEach((id, info) {
    print("ID: $id, Produk: ${info['nama']}, Harga: Rp${info['harga']}");
  });
  print("");

  // 4. Fungsi Diskon Berjenjang
  print("=== Bagian 4: Fungsi Diskon Berjenjang ===");
  Function hitungHargaDiskon = buatFungsiDiskon();
  print("Harga setelah diskon pertama: Rp${hitungHargaDiskon(10000)}");
  print("Harga setelah diskon kedua: Rp${hitungHargaDiskon(10000)}");
  print("Harga setelah diskon ketiga: Rp${hitungHargaDiskon(10000)}");
}

// Fungsi untuk membuat diskon berjenjang
Function buatFungsiDiskon() {
  int persentaseDiskon = 0;
  return (int hargaAwal) {
    persentaseDiskon += 5;
    double nilaiDiskon = hargaAwal * persentaseDiskon / 100;
    return (hargaAwal - nilaiDiskon).toInt();
  };
}

void main() => utama();
