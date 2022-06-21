import 'dart:convert';

import 'package:abon/helpers/api.dart';
import 'package:abon/helpers/api_url.dart';
import 'package:abon/model/jadwal.dart';

class JadwalkBloc {
  static Future<List<Jadwal>> getJadwal(String? nik) async {
    String apiUrl = ApiUrl.jadwal;
    var body = {"nik": nik};
    var response = await Api().post(apiUrl, body);
    var jsonObj = json.decode(response.body);
    List<dynamic> listProduk = (jsonObj as Map<String, dynamic>)['data'];
    List<Jadwal> jadwal = [];
    for (int i = 0; i < listProduk.length; i++) {
      jadwal.add(Jadwal.fromJson(listProduk[i]));
    }
    return jadwal;
  }
}
