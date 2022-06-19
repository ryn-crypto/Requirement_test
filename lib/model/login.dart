import 'package:flutter/foundation.dart';

class Login {
  int? code;
  bool? status;
  String? token;
  int? userId;
  String? userEmail;

  Login({this.code, this.status, this.token, this.userId, this.userEmail});

  factory Login.formJson(Map<String, dynamic> obj) {
    return Login(
        code: obj['code'],
        status: obj['status'],
        token: obj['data']['token'],
        userId: obj['data']['user']['id'],
        userEmail: obj['data']['user']['email']);
  }
}
