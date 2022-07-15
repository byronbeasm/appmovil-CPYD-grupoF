import 'package:appcpyd/vistas/loginalumno/data/logindata.dart';
import 'package:appcpyd/vistas/loginalumno/models/loginmodels.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class logincontroller extends GetxController {
  RxBool loading = false.obs;
  Rx<Loginm> login = Loginm().obs;
  RxString url = ''.obs;
  Rx<UniqueKey> key = UniqueKey().obs;
  void loginapi() async {
    try {
      login.value = await logind.login();
      url.value = login.value.redirectUrl!;
      Get.offAllNamed('/loginwvs');
    } catch (e) {
      print(e);
    }
  }
}
