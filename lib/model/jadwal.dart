// To parse this JSON data, do
//
//     final jadwal = jadwalFromJson(jsonString);

import 'dart:convert';

Jadwal jadwalFromJson(String str) => Jadwal.fromJson(json.decode(str));

String jadwalToJson(Jadwal data) => json.encode(data.toJson());

class Jadwal {
  Jadwal({
    this.code,
    this.status,
    required this.data,
  });

  int? code;
  bool? status;
  List<Datum> data;

  factory Jadwal.fromJson(Map<String, dynamic> json) => Jadwal(
        code: json["code"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.nik,
    this.shiftId,
    this.tanggal,
    this.bulan,
    this.tahun,
    this.jamMasuk,
    this.jamPulang,
  });

  int? id;
  String? nik;
  int? shiftId;
  String? tanggal;
  String? bulan;
  String? tahun;
  String? jamMasuk;
  String? jamPulang;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        nik: json["nik"],
        shiftId: json["shift_id"],
        tanggal: json["tanggal"],
        bulan: json["bulan"],
        tahun: json["tahun"],
        jamMasuk: json["jam_masuk"],
        jamPulang: json["jam_pulang"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nik": nik,
        "shift_id": shiftId,
        "tanggal": tanggal,
        "bulan": bulan,
        "tahun": tahun,
        "jam_masuk": jamMasuk,
        "jam_pulang": jamPulang,
      };
}
