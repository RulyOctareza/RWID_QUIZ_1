/*

Buatlah program dengan nama guess the number, program tersebut akan meminta user untuk menebak angka dengan inputan [1 sampai 100 ]dari cli,
kemudian angka akan memeriksa apakah tebakan user benar atau salah.
Jika jawaban user benar, tampilkan pesan selamat, jawaban yang benar serta jumlah percobaan.
Jika jawaban salah sampaikan tampilkan pesan apakah jawaban user terlalu besar atau terlalu kecil dibanding jawaban yang benar.
Jika jawaban user bukan angka antara 1 - 100 tampilkan pesan bahwa jawaban user tidak valid dan tidak menambah total percobaan 
yg dilakukan oleh user.
Aplikasi harus terus berjalan sampai user menebak dengan benar.

*/

import 'dart:io';
import 'dart:math';

void main() {
  print('Selamat datang di aplikasi tebak angka 1 - 100');
  print('Masukan angka tebakan anda');
  print('');
  tebakAngka();
}

void tebakAngka() {
  Random random = Random();
  int targetNumber = random.nextInt(100) + 1;
  print(targetNumber.toString());
  int hitungTebakanKe = 0;
  //bool nilaiTebakan = false;

  for (;;) {
    String? input = stdin.readLineSync();
    if (input != null && int.tryParse(input) != null) {
      int tebak = int.parse(input);
      if (tebak < 1 || tebak > 100) {
        print('Input tidak Valid, Masukan angka 1 - 100');
      } else {
        hitungTebakanKe++;
      }
      if (tebak == targetNumber) {
        print(
            'Selamat ! TEBAKAN ANDA BENAR $targetNumber , ini tebakan ke- $hitungTebakanKe');
        break;
      }
      if (tebak < targetNumber) {
        print('angka anda lebih kecil');
      }
      if (tebak > targetNumber) {
        print('angka anda lebih besar');
      }
    }
  }
}
