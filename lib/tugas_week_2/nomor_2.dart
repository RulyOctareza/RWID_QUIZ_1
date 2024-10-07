/*
Buatlah program yang menampilkan data siswa yang berupa nama dan hobby.
Program langsung print data siswa tanpa harus memilih menu dan akan berhenti setelah data ditampilkan.
Simpan data pada List of Map dengan Tipe Data List<Map<String, String>>.
Data boleh hardcoded saja.

*/

List<Map<String, String>> dataSiswa = [
  {
    'Nama': 'Abi',
    'Hobby': 'Sepak bola tangan',
  },
  {
    'Nama': 'Aci',
    'Hobby': 'Sepak bola kaki',
  },
  {
    'Nama': 'Adi',
    'Hobby': 'Sepak bola kepala',
  },
  {
    'Nama': 'Afi',
    'Hobby': 'Sepak bola pundak',
  },
  {
    'Nama': 'Aji',
    'Hobby': 'Sepak bola punggung',
  },
  {
    'Nama': 'Ali',
    'Hobby': 'Sepak bola paha',
  },
  {
    'Nama': 'Ati',
    'Hobby': 'Sepak bola lengan',
  },
];

void main() {
  print('');
  print('');
  print('========================================');
  print('');
  print('Selamat Datang di Aplikasi Daftar Siswa');
  print('');
  print('');

  for (var data in dataSiswa) {
    print('Nama: ${data['Nama']} ');
    print('Hobby: ${data['Hobby']} ');
    print('');
  }

  print('');
  print('');
  print('========================================');
  print('');
  print('');
}
