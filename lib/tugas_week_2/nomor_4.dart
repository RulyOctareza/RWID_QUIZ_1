/*
Buatlah program Bookshelf (Rak Buku), yang memiliki fitur, Add Book, Show Book, Search Book dan Exit.
Simpan data buku pada List of Map dengan Tipe Data List<Map<String, String>>
Data buku minimal harus berisi key title, page, author.
Penyimpanan data buku cukup menggunakan Map, tidak perlu menggunakan Class dan Object.
Buatlah minimal salah satu menu (boleh lebih) antara add book, show book atau search book menggunakan asynchronous function


*/

import 'dart:io';

List<Map<String, String>> bookshelf = [];

void main() async {
  bool menu = true;

  while (menu) {
    print('\nSelamat datang di Aplikasi Bookshelf');
    print('\nSilakan pilih menu :');
    print('1. Add Book');
    print('2. Show Book');
    print('3. Search Book');
    print('4. Exit\n');

    String input = stdin.readLineSync() ?? '';
    int pilihan = int.parse(input);

    switch (pilihan) {
      case 1:
        await addBook(); //menggunakan await karena fungsinya async
      case 2:
        await showBook();
      case 3:
        searchBook();
      case 4:
        print('\nTerima Kasih telah berkunjung\n');
        menu = false;
        break;

      default:
        print('Error: Input Tidak Valid');
    }
  }
}

Future<void> addBook() async {
  print('\nMasukan Informasi yang diperlukan !');
  stdout.write('Masukan Judul Buku: ');
  String? title = stdin.readLineSync();

  stdout.write('Masukan Author Buku: ');
  String? author = stdin.readLineSync();

  stdout.write('Masukan Jumlah halaman Buku:');
  String? halaman = stdin.readLineSync();

  if (title != null && author != null && halaman != null) {
    bookshelf.add({'title': title, 'author': author, 'halaman': halaman});

    await Future.delayed(Duration(seconds: 2), () {});
    print('\n=== Buku "$title" berhasil ditambahkan ===');
  } else {
    print('Error: Input Tidak Valid');
  }
}

Future<void> showBook() async {
  if (bookshelf.isEmpty) {
    print('\nTidak ada buku yang bisa ditampilkan');
  } else {
    await Future.delayed(Duration(seconds: 2));

    print('\nBerikut adalah daftar buku:\n');
    // menggunakan perulangan for maka bisa menampilkan indeks dari buku dengan nomornya
    for (var i = 0; i < bookshelf.length; i++) {
      print(
          '${i + 1}. Judul: ${bookshelf[i]['title']}, Author: ${bookshelf[i]['author']}, Halaman: ${bookshelf[i]['halaman']}');
    }
    // jika menggunakan for in maka nomor dari urutan buku tidak tertampilkan
    for (var book in bookshelf) {
      print('Judul ${book['title']}, Author: ${book['author']}');
    }
  }
  ;
}

void searchBook() {
  bool found = false;
}
