import 'package:appcpyd/vistas/loginalumno/controllers/lcontroller.dart';

import 'package:appcpyd/vistas/loginalumno/loginwvs.dart';

import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class pantalla_login extends GetWidget<logincontroller> {
  const pantalla_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.url.value == ''
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //Padding(
                  //padding: const EdgeInsets.fromLTRB(20, 0, 20, 250),
                  //child:
                  Center(
                    child: GoogleAuthButton(
                      onPressed: () async {
                        controller.loginapi();
                        print(controller.url.value);
                      },
                    ),
                  )
                ],
              )
            : loginwv(controller.url.value)));
  }
}
