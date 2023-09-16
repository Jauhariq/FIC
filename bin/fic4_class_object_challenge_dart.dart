import 'package:fic4_class_object_challenge_dart/kucing.dart';
import 'package:fic4_class_object_challenge_dart/mahasiswa.dart';
import 'package:fic4_class_object_challenge_dart/nasabah.dart';

void main() {
  print("No 1");
  Kucing kucing1 = Kucing();
  kucing1.nama = "Meong";
  kucing1.umur = 3;
  print("Nama : ${kucing1.nama}\nUmur : ${kucing1.umur} Tahun");
  print("============================");
  print("No 2");
  String jsonString1 =
      '{"nama": "Udin", "jurusan": "Teknik Elektro", "angkatan": 2020}';
  Mahasiswa mahasiswa1 = Mahasiswa.fromJson(jsonString1);
  print(
      "Nama : ${mahasiswa1.nama}\nJurusan : ${mahasiswa1.jurusan}\nAngkatan : ${mahasiswa1.angkatan}");
  print("============================");
  print("No 3");
  // 5. buat objek nasabah1 dan nasabah2 dari class Nasabah
  Nasabah nasabah1 = Nasabah("Udin", "Jalan Raya");
  Nasabah nasabah2 = Nasabah("Ucup", "Jalan Suka Suka");

  // 6. melakukan beberapa transaksi dengan method simpan dan ambil
  nasabah1.simpan(1000);
  nasabah1.ambil(500);

  nasabah2.simpan(1500);
  nasabah2.ambil(200);

  // 7. Tampilkan nilai saldo terakhir
  print("Saldo terakhir nasabah1: \$${nasabah1.saldo}");
  print("Saldo terakhir nasabah2: \$${nasabah2.saldo}");
  print("============================");
  print("SELESAI");
}
