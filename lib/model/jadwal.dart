class Jadwal {
  int? code;
  bool? status;
  int? idUser;
  String? nik;
  String? tanggal;
  String? bulan;
  String? tahun;
  String? jam_masuk;
  String? jam_pulang;

  Jadwal(
      {this.code,
      this.status,
      this.idUser,
      this.nik,
      this.tanggal,
      this.bulan,
      this.tahun,
      this.jam_masuk,
      this.jam_pulang});

  factory Jadwal.fromJson(Map<String, dynamic> obj) {
    return Jadwal(
        code: obj['code'],
        status: obj['status'],
        idUser: obj['id'],
        nik: obj['nik'],
        tanggal: obj['tanggal'],
        bulan: obj['bulan'],
        tahun: obj['tahun'],
        jam_masuk: obj['jam_masuk'],
        jam_pulang: obj['jam_pulang']);
  }
}
