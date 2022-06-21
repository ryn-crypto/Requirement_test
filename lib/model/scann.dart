import 'package:flutter/foundation.dart';

class Scann {
  int? code;
  bool? status;
  String? respon;

  Scann({this.code, this.status, this.respon});

  factory Scann.formJson(Map<String, dynamic> obj) {
    return Scann(code: obj['code'], status: obj['status'], respon: obj['data']);
  }
}
