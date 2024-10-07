import 'dart:io';

void main() {
  eWallet();
}

void eWallet() {
  double isSaldo = 0;
  bool isRunning = true;

  while (isRunning) {
    print('===== E-Wallet Sederhana =====');
    print('1.  Cek Saldo');
    print('2.  Top-up Saldo');
    print('3.  Belanja');
    print('4.  Keluar');
    print('');
    print('Pilih Menu 1 - 4');

    String input = stdin.readLineSync() ?? '';

    //if (input != null && int.tryParse(input) != null) {
    int? pilihan = int.tryParse(input);

    switch (pilihan) {
      case 1:
        print('Saldo anda saat ini Rp: $isSaldo');
        print('');
        print('');

        break;
      case 2:
        print('Masukan Jumlah top-up yang anda inginkan : ');
        String? topUpInput = stdin.readLineSync();

        if (topUpInput != null && int.tryParse(topUpInput) != null) {
          double topUp = double.parse(topUpInput);
          isSaldo += topUp;
          print('Topup Berhasil, saldo anda sekarang : Rp. $isSaldo');
          print('');
          print('');
        } else {
          print('Input tidak valid, Masukan hanya Angka !');
        }
        break;
      case 3:
        print('Masukan Jumlah Belanja anda :');
        String? belanjaInput = stdin.readLineSync();

        if (belanjaInput != null && int.tryParse(belanjaInput) != null) {
          double belanja = double.parse(belanjaInput);
          isSaldo -= belanja;
          print('Belanja Berhasil, saldo anda sekarang : Rp. $isSaldo');
          print('');
          print('');
        } else {
          print('Input tidak valid, Masukan hanya Angka !');
        }
        break;
      case 4:
        print('Terima Kasih telah menggunakan E-Wallet. Sampai Jumpa ! ');
        print('');
        print('');
        isRunning = false;
        break;
      // default:
      //   print('Pilihan tidak valid, pilih menu 1 -4 ');
    }
    //}
  }
}
