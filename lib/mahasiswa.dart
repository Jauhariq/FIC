import 'dart:convert';

// 1. buat class mahasiswa beserta artibutnya
class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

// 2. Buat Constructor default
  Mahasiswa() {
    print("Mengecek Mahasiswa");
  }

// 3. Buat Constructor parameterized
  Mahasiswa.data(this.nama, this.jurusan, this.angkatan);

// 4. Buat Constructor named fromJson
  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}
