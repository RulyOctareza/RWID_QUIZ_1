function onFormSubmitBuktiBarang(e) {
  // Ambil lembar yang terhubung dengan form
  const sheet =
    SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Form Responses 2");

  // Ambil data dari event (e.values berisi nilai dari form)
  const lastRow = sheet.getLastRow();

  // Ambil ID file yang diunggah (misalnya, kolom kedua terakhir)
  const fileId = e.values[e.values.length - 2]; // ID file ada di kolom kedua terakhir (sesuaikan dengan urutan)

  // Buat URL file berdasarkan ID file yang diunggah
  const fileUrl = fileId + "/view?usp=sharing";

  // Ambil input lokasi sel tujuan dari form (misalnya di kolom terakhir)
  const targetCellLocation = e.values[e.values.length - 1]; // Ambil lokasi sel dari kolom terakhir form

  // Tentukan sheet tujuan
  const targetSheet =
    SpreadsheetApp.getActiveSpreadsheet().getSheetByName("Database Pembelian"); // Ganti dengan nama sheet yang sesuai

  // Tentukan lokasi sel tujuan menggunakan input dari form
  const targetCell = targetSheet.getRange(targetCellLocation);

  // Simpan link foto di lokasi sel yang dipilih oleh pengguna
  targetCell.setValue(fileUrl);

  Logger.log(
    "Link foto berhasil disimpan di " + targetCellLocation + ": " + fileUrl
  );
}
