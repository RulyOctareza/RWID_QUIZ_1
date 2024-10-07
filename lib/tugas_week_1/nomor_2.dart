/*
 
 * Buatlah program yang melakukan perulangan dan menampilkan angka sesuai urutan perulangan 
 * (perulangan pertama menampilkan angka 1, perulangan kedua menampilkan angka 2, dst). 
 * Namun, pada perulangan kelipatan 3 tampilkan kata Remote, peda perulangan kelipatan 5 tampilkan kata Worker, 
 * serta pada perulangan dengan kelipatan 3 dan 5 tampilkan frasa Remote Worker

 */

import 'dart:io';

void main() {
  perulanganSatu();
}

void perulanganSatu() {
  print('Selamat datang di Program perulangan Remote Worker');
  print(
      'Program ini akan menuliskan Kata "REMOTE" pada kelipatan 3 dan Kata "WORKER" pada kelipatan ke 5');
  print(
      'Serta akan Menuliskan "REMOTE WORKER" pada perulangan yang merupakan Kelipatan dari 3 dan 5');
  print('Masukan Angka yang ingin diulang');

  String? input = stdin.readLineSync();
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);

    for (var i = 1; i <= number; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        print('Remote Worker');
      } else if (i % 5 == 0) {
        print('Worker');
      } else if (i % 3 == 0) {
        print('Remote ');
      } else {
        print(i);
      }
    }
    print('=====');
    print('Perulangan Selesai');
    print('Terima kasih ^_^');
    print('');
  } else {
    print('$input, Bukan angka. MASUKAN HANYA ANGKA !');
  }
}
