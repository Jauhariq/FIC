### Dart OOP Class & Object Coding Challenges

Sebuah project challenge OOP dart dari materi FIC batch 4

### Cara menjalakan project ini

- Buka project ini di kode editor masing" seperti vscode
- Buka terminal kemudian
- Ketik ```cd bin```
- lalu enter
- Ketik ```dart run fic4_class_object_challenge_dart```
- Dan enter lagi
- enjoy

### Pembahasan

1. Materi Class dan Object

Soal :

1. Buatlah sebuah class bernama Kucing dengan atribut nama dan umur.
2. Buatlah sebuah objek dari class Kucing dengan nama kucing1 dengan nilai atribut nama adalah
"Meong" dan umur adalah 3 tahun.
3. Tampilkan nilai atribut dari objek kucing1 menggunakan method print.

Jawab : 

```dart
// 1. buat class kucing beserta atributnya
class Kucing {
  String? nama;
  int? umur;
}

void main(){
// 2. Membuat objeknya
 Kucing kucing1 = Kucing();
  kucing1.nama = "Meong";
  kucing1.umur = 3;

/// 3. cetak nilai atribut
  print("Nama : ${kucing1.nama}\nUmur : ${kucing1.umur} Tahun");
}
```

2. Materi Constructor

Soal :

1. Buatlah sebuah class bernama Mahasiswa dengan atribut nama, jurusan, dan angkatan.
2. Buatlah constructor default pada class Mahasiswa.
3. Buatlah constructor parameterized pada class Mahasiswa dengan parameter nama, jurusan, dan angkatan.
4. Buatlah constructor named pada class Mahasiswa dengan nama fromJson yang menerima parameter jsonString dan
5. mengembalikan objek Mahasiswa yang diinisialisasi dengan nilai atribut dari jsonString.

Jawab : 

```dart
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

void main(){
// 5. Mengembalikan objek Mahasiswa yang diinisialisasi dengan nilai atribut dari jsonString.
    String jsonString1 =
      '{"nama": "Udin", "jurusan": "Teknik Elektro", "angkatan": 2020}';
  Mahasiswa mahasiswa1 = Mahasiswa.fromJson(jsonString1);
  print(
      "Nama : ${mahasiswa1.nama}\nJurusan : ${mahasiswa1.jurusan}\nAngkatan : ${mahasiswa1.angkatan}");
}
```

3. Membuat Aplikasi Bank

Soal :

1. Buatlah sebuah class bernama Nasabah dengan atribut nama, alamat, dan saldo.
2. Buatlah constructor parameterized pada class Nasabah dengan parameter nama dan alamat, dan memberikan nilai awal saldo adalah 0.
3. Buatlah method simpan pada class Nasabah yang menerima parameter jumlah dan menambahkan jumlah ke saldo.
4. Buatlah method ambil pada class Nasabah yang menerima parameter jumlah dan mengurangi jumlah dari saldo.
5. Buatlah objek nasabah1 dan nasabah2 dari class Nasabah dengan nilai atribut masing-masing.
6. Lakukan beberapa transaksi dengan method simpan dan ambil pada objek nasabah1 dan nasabah2.
7. Tampilkan nilai saldo terakhir dari objek nasabah1 dan nasabah2 menggunakan method print.

Jawab :

```dart
// 1. buat class nasabah
class Nasabah {
  String nama;
  String alamat;
  double saldo;

// 2. buat constructor parameterized
  Nasabah(this.nama, this.alamat) : saldo = 0.0;

// 3. buat method simpan
  void simpan(double jumlah) {
    saldo += jumlah;
  }

// 4. buat method ambil
  void ambil(double jumlah) {
    if (saldo >= jumlah) {
      saldo -= jumlah;
    } else {
      print("Saldo tidak mencukupi untuk penarikan ini.");
    }
  }
}

void main(){
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
}
```