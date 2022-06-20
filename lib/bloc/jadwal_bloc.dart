import 'dart:convert';

import 'package:abon/helpers/api.dart';
import 'package:abon/helpers/api_url.dart';
import 'package:abon/model/jadwal.dart';

class JadwalBloc {
  static Future<List<Jadwal> jadwal({String? email, String? password}) async {
    String apiUrl = ApiUrl.jadwal;
    var response = await Api().get(apiUrl);
    var jsonObj = json.decode(response.body);

    List<dynamic> dataJadwal = (jsonObj as Map<String, dynamic>)['data'];
    List<Jadwal> jadwalku = [];
    for (int i = 0; i < dataJadwal.length; i++) {
      jadwalku.add(Jadwal.fromJson(dataJadwal[i]));
    }
  }
}
