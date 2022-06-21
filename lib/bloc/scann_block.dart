import 'dart:convert';

import 'package:abon/helpers/api.dart';
import 'package:abon/model/scann.dart';

class ScannBloc {
  static Future<Scann> scann({int? nik, int? id, String? scanurl}) async {
    var body = {"nik": nik, "id": id};
    var response = await Api().post(scanurl, body);
    var jsonObj = json.decode(response.body);
    return Scann.formJson(jsonObj);
  }
}
