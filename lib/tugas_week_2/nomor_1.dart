/*Soal 1 :
Palindrome adalah suatu string yang memiliki urutan karakter yang sama saat 
dibaca dari depan atau belakang, misal : katak, kasur rusak, dsb.
Buatlah program Check Palindrome, untuk mengecek apakah 
suatu String merupakan palindrome atau bukan.
Program memiliki 2 menu yaitu ‘check palindrome’ 
dan exit. Menu check palindrome akan meminta input string kepada user 
dan mengecek apakah string tersebut palindrom atau bukan, 
dan menyampaikan pesan hasilnya kepada user.
Program harus terus berjalan sampai user memilih exit.

*/

import 'dart:io';

void main() {
  menuPalindrom();
}

bool cekPalindrom = true;
void menuPalindrom() {
  while (cekPalindrom) {
    print('=========');
    print(
        'Ini adalah program untuk mengecek kata/kalimat merupakan palindrom atau bukan');
    print('Silakan ketik menu yang anda inginkan: ');
    print('1. Cek Palindrom');
    print('2. Exit');

    String input = stdin.readLineSync() ?? '';
    int? pilihmenu = int.tryParse(input);

    switch (pilihmenu) {
      case 1:
        print('Masukan kata yang ingin anda check ! : ');
        String kata = stdin.readLineSync() ?? '';

        if (isPalindrom(kata)) {
          print('$kata adalah Palindrome !');
          print('');
          print('');
        } else {
          print('');
          print('$kata bukan merupakan Palindrome !');
          print('');
          print('');
        }
        break;
      case 2:
        print('');
        print('====== Terima Kasih ======');
        print('');
        cekPalindrom = false;
        break;

      default:
    }
  }
}

bool isPalindrom(String text) {
  String cleanedtext = text.toLowerCase();
  String reversedText = cleanedtext.split('').reversed.join('');

  return cleanedtext == reversedText;
}
