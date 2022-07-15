import 'package:appcpyd/vistas/loginalumno/data/logindata.dart';
import 'package:appcpyd/vistas/loginalumno/models/loginmodels.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';

class pantalla_login extends StatelessWidget {
  const pantalla_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 250),
            child: Center(
              child: GoogleAuthButton(
                onPressed: () async {
                  Loginm datos = await logind.login();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
