import 'dart:io';

import 'nomor1.dart';

void main() {
  menuCalculator();
}

void menuCalculator() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Kalkulator Bangun datar');
    print('2. Kalkulator Bangun Ruang');
    print('3. Exit');
    stdout.write('Menu Yang anda inginkan : ');

    String? input = stdin.readLineSync();
    int pilihan = int.parse(input!);

    switch (pilihan) {
      case 1:
        kalkulatorBangungdatar();
      case 2:
        kalkulatorBangungRuang();
      case 3:
        print('\nTerima Kasih\n');
        isRunning = false;
        break;
    }
  }
}

void kalkulatorBangungdatar() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Persegi');
    print('2. Persegi Panjang');
    print('3. Lingkaran');
    print('4. Exit');
    stdout.write('Menu Yang anda inginkan : ');

    String? input = stdin.readLineSync();
    int pilihan = int.parse(input!);

    switch (pilihan) {
      case 1:
        stdout.write('Masukan Panjang sisi : ');
        String? masukan = stdin.readLineSync();
        double angka = double.parse(masukan!);
        Square square = Square(angka);
        square.displayinfo();
        print('');

      case 2:
        stdout.write('Masukan Panjang sisi : ');
        String? inputSisi = stdin.readLineSync();
        double pSisi = double.parse(inputSisi!);

        stdout.write('Masukan Tinggi Sisi : ');
        String? inputTinggi = stdin.readLineSync();
        double tSisi = double.parse(inputTinggi!);

        Rectangle rectangle = Rectangle(pSisi, tSisi);
        rectangle.displayinfo();
        print('');

      case 3:
        stdout.write('Masukan Diameter Lingkaran : ');
        String? inputDiameter = stdin.readLineSync();
        double diameter = double.parse(inputDiameter!);

        Circle circle = Circle(diameter);
        circle.displayinfo();
        print('');

      case 4:
        print('\nTerima Kasih\n');
        isRunning = false;

        break;
      default:
    }
  }
}

void kalkulatorBangungRuang() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Tabung');
    print('2. Kubus');
    print('3. Bola');
    print('4. Exit');
    stdout.write('Menu Yang anda inginkan : ');

    String? input = stdin.readLineSync();
    int pilihan = int.parse(input!);

    switch (pilihan) {
      case 1:
      case 2:
      case 3:
        break;
      default:
    }
  }
}
