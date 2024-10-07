/* 
Buatlah program yang akan menampilkan Piramida pada cli.
Program akan meminta inputan berupa angka yang akan menjadi tinggi piramida.
Inputan harus berupa bilangan bulat positif, jika inputan salah sampaikan pesan kepada user

*/

import 'dart:io';

void main() {
  print('');
  print('================');
  print('');
  print('');
  print('Ini adalah Aplikasi pembuat piramida !');
  print('Silakan Masukan tinggi dari piramida yang anda inginkan : ');
  String? input = stdin.readLineSync();
  if (input != null && int.tryParse(input) != null) {
    int tinggi = int.parse(input);
    print('Ini adalah PIRAMIDA bertinggi $tinggi');
    for (var i = 0; i <= tinggi; i++) {
      stdout.write('^' * (2 * i - 1));
      print('');
      stdout.write(' ' * (tinggi - i));
    }
  } else {
    print('');
    print('================');
    print('$input Bukan angka, harap masukan Angka !');
    print('');
    print('================');
    print('');
    print('');
  }
}
