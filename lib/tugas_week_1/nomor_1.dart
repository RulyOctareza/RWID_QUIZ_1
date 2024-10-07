import 'dart:io';

/*

buatlah program yang menerima input angka dari cli, 
dan kemudian periksa apakah bilangan tersebut ganjil atau genap. 
Handle juga kondisi jika user menginput selain angka.

*/

void main() {
  //caraPertama();
  caraKedua();
}

// Cara 1

void caraPertama() {
  print('Ini adalah Program pertama untuk menentukan Angka Ganjil/Genap');
  print('Silakan Masukan Angka:');
  String? input = stdin.readLineSync();
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);
    if (number % 2 == 0) {
      print('$number Bilangan genap');
    } else {
      print('$number Bilangan Ganjil');
    }
  } else {
    print('$input Bukan angka, harap masukan Angka !');
  }
  print('Terima kasih ^_^');
  print('');
  print('');
}

// Cara 2

bool isNumeric(String str) {
  return int.tryParse(str) != null;
}

void cekGanjilGenap(int number) {
  if (number % 2 == 0) {
    print('$number ini Bilangan Genap');
  } else {
    print('$number ini Bilangan Ganjil');
  }
}

void caraKedua() {
  print('Ini adalah Program kedua untuk menentukan Angka Ganjil/Genap');
  print('Masukan Angka');
  String? input = stdin.readLineSync();

  if (input != null && isNumeric(input)) {
    int number = int.parse(input);
    cekGanjilGenap(number);
  } else {
    print('Input bukan angka, Masukan Angka !');
  }
  print('Terima kasih ^_^');
  print('');
  print('');
}
