import 'dart:ffi';

import 'package:appcpyd/vistas/loginalumno/controllers/lcontroller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class lbinding extends Bindings {
  void dependencies() {
    Get.lazyPut(logincontroller.new);
  }
}
