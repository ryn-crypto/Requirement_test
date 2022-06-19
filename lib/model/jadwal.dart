class Jadwal {
  int? id;
  String? kodeProduk;
  String? namaProduk;
  int? hargaProduk;

  Jadwal({this.id, this.kodeProduk, this.namaProduk, this.hargaProduk});

  factory Jadwal.fromJson(Map<String, dynamic> obj) {
    return Jadwal(
        id: obj['id'],
        kodeProduk: obj['kode_produk'],
        namaProduk: obj['nama_produk'],
        hargaProduk: obj['harga']);
  }
}
