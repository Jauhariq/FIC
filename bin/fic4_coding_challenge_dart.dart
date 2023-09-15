import 'dart:io';

void main() {
  print("No 1");
  // Deklarasi variabel untuk panjang dan lebar
  double panjang = 8.0; // nilai panjang
  double lebar = 4.0; // nilai lebar

  // Menghitung luas persegi panjang dengan menggunakan variabel luas dan kemudian disimpan
  double luas = panjang * lebar;

  // Menampilkan hasil luas menggunakan print()
  print(
      "Luas persegi panjang dengan panjang $panjang dan lebar $lebar adalah $luas");
  print("=================================================================");
  print("No 2");
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
  print("=================================================================");
  print("No 3");
  print('Masukkan sebuah angka: ');

  // Membaca input dari pengguna dan mengonversi ke tipe double
  String input2 = stdin.readLineSync()!; //meminta input dari console
  double angka =
      double.tryParse(input2) ?? 0; // Jika input tidak valid, anggap sebagai 0.

  // Memeriksa angka dan mencetak pesan yang sesuai
  if (angka > 0) {
    print('Angka tersebut positif');
  } else if (angka < 0) {
    print('Angka tersebut negatif');
  } else {
    print('Angka tersebut nol');
  }
  print("=================================================================");
  print("No 4");
  // Menggunakan perulangan for untuk mencetak bilangan genap dari 1 hingga 10
  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }
  print("=================================================================");
  print("No 5");
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
  print("=================================================================");
  print("No 6");
  // membuat function untuk mengubah inputan menjadi huruf kapital
  String ubahKapital(String input) {
    return input
        .toUpperCase(); // menggunakan toUpperCase untuk mengubah inputan menjadi kapital
  }

  // menginput dari console
  print('Masukkan sebuah string: ');
  String input1 = stdin.readLineSync()!;

  // hasil inputan di masukkan ke function ubahKapital dan hasilnya disimpan ke variabel hasil
  String hasil = ubahKapital(input1);

  // mencetak hasil inputan
  print('String dalam huruf kapital: $hasil');
  print("=================================================================");
  print("SELESAI");
}
