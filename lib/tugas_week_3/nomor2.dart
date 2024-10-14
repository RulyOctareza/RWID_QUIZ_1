import 'dart:io';

void main() {}

void menuCalculator() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Kalkulator Bangun datar');
    print('2. Kalkulator Bangun Ruang');
    print('3. Exit');

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

void kalkulatorBangungdatar() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Hitung Luas');
    print('2. Hitung Keliling');
    print('3. Exit');

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

void kalkulatorBangungRuang() {
  bool isRunning = true;

  while (isRunning) {
    print('1. Hitung Volume');
    print('2. Exit');

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
