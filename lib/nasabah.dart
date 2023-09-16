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
