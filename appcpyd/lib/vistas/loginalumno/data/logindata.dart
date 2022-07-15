import 'package:appcpyd/vistas/loginalumno/models/loginmodels.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class logind extends GetxService {
  static Dio client = Dio();
  static Future<Loginm> login() async {
    var response = await client
        .get('https://api.sebastian.cl/classroom/v1/authentication/login');
    return Loginm.fromJson(response.data);
  }
}
