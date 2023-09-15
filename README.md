### Dart Coding Challenges
Sebuah project challenge dart dari materi FIC batch 4

### Cara menjalakan project ini
- Buka project ini di kode editor masing" seperti vscode
- Buka terminal kemudian 
- Ketik ```cd bin```
- lalu enter
- Ketik ```dart run fic4_coding_challenge_dart.dart```
- Dan enter lagi
- enjoy

### Pembahasan

1. Variable

Soal :

Buatlah sebuah program Dart yang menghitung luas persegi panjang. Program ini harus menggunakan variabel untuk menyimpan nilai panjang dan lebar, dan kemudian mencetak luasnya.

Jawab :

```dart 
void main() {
  // Deklarasi variabel untuk panjang dan lebar
  double panjang = 8.0; // nilai panjang
  double lebar = 4.0;   // nilai lebar

  // Menghitung luas persegi panjang dengan menggunakan variabel luas dan kemudian disimpan
  double luas = panjang * lebar;

  // Menampilkan hasil luas menggunakan print()
  print("Luas persegi panjang dengan panjang $panjang dan lebar $lebar adalah $luas");
}
```

2. Datatype

Soal :

Buatlah sebuah program Dart yang meminta pengguna untuk memasukkan usia mereka dan kemudian mencetak pesan "Anda adalah seorang dewasa" jika usia lebih dari atau sama dengan 18, dan mencetak pesan "Anda masih seorang anak-anak" jika usia kurang dari 18.

Jawab :

```dart
import 'dart:io'; // import dart:io untuk menggunakan stdin

void main() {
// Meminta pengguna untuk memasukkan usia
  print("Masukkan Usia Anda:");
  String input = stdin.readLineSync()!; //meminta input dari console
  int usia = int.tryParse(input) ?? 0; // convert String menjadi int

  // Memeriksa usia dan mencetak pesan yang sesuai
  if (usia >= 18) {
    print("Anda adalah seorang dewasa");
  } else {
    print("Anda masih seorang anak-anak");
  }
}
```

3. Condition

Soal :

Buatlah sebuah program Dart yang meminta pengguna untuk memasukkan sebuah angka dan kemudian mencetak pesan "Angka tersebut positif" jika angka yang dimasukkan lebih besar dari 0, dan mencetak pesan "Angka tersebut negatif" jika angka yang dimasukkan lebih kecil dari 0. Jika angka yang dimasukkan adalah 0, program harus mencetak pesan "Angka tersebut nol".

Jawab :

```dart
import 'dart:io'; // import dart:io untuk menggunakan stdin

void main() {
  print('Masukkan sebuah angka: ');

  // Membaca input dari pengguna dan mengonversi ke tipe double
  String input = stdin.readLineSync()!; //meminta input dari console
  double angka = double.tryParse(input) ?? 0; // Jika input tidak valid, anggap sebagai 0.

  // Memeriksa angka dan mencetak pesan yang sesuai
  if (angka > 0) {
    print('Angka tersebut positif');
  } else if (angka < 0) {
    print('Angka tersebut negatif');
  } else {
    print('Angka tersebut nol');
  }
}
```

4. Looping

Soal :

Buatlah sebuah program Dart yang mencetak bilangan genap dari 1 hingga 10.
Program ini harus menggunakan perulangan (looping) untuk mencetak semua bilangan genap tersebut.

Jawab :

```dart
void main() {
  // Menggunakan perulangan for untuk mencetak bilangan genap dari 1 hingga 10
  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }
}
```

5. Collection

Soal :

Buatlah sebuah program Dart yang meminta pengguna untuk memasukkan lima angka dan kemudian mencetak jumlah dari kelima angka tersebut.

Jawab :

```dart
void main(){
  List<double> angkaList = []; // bikin list buat nampung angka yang diinput
  double total = 0; // menyimpan totalnya

  for (int i = 1; i <= 5; i++) {
    // perulangan untuk menginput sebanyak 5x kemudian menambahkannya ke list
    print('Masukkan angka ke-$i: ');
    String input = stdin.readLineSync()!;
    double angka = double.tryParse(input) ?? 0;
    angkaList.add(angka);
  }

  for (double angka in angkaList) {
    // menjumlahkan semua angka yang sudah diinput ke list
    total += angka;
  }

  // mencetak totalnya
  print('Jumlah dari kelima angka tersebut adalah: $total');
}
```

6. Function

Soal :

Buatlah sebuah fungsi Dart yang menerima sebuah string sebagai argumen dan
mengembalikan string yang diubah menjadi huruf kapital. Gunakan fungsi tersebut untuk mengubah sebuah string input dan mencetak hasilnya.

Jawab :

```dart
import 'dart:io'; // import dart:io untuk menggunakan stdin

void main(){
    // membuat function untuk mengubah inputan menjadi huruf kapital
  String ubahKapital(String input) {
    return input.toUpperCase(); // menggunakan toUpperCase untuk mengubah inputan menjadi kapital
  }

  // menginput dari console
  print('Masukkan sebuah string: ');
  String input1 = stdin.readLineSync()!;

  // hasil inputan di masukkan ke function ubahKapital dan hasilnya disimpan ke variabel hasil
  String hasil = ubahKapital(input1);

  // mencetak hasil inputan
  print('String dalam huruf kapital: $hasil');
}
```