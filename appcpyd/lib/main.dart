import 'dart:io';

import 'package:appcpyd/homepage.dart';
import 'package:appcpyd/routes/routes.dart';
import 'package:appcpyd/vistas/loginalumno/controllers/lcontroller.dart';
import 'package:appcpyd/vistas/loginalumno/l_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  ByteData data = await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: routes(),
      initialBinding: BindingsBuilder(() {
        Get.put(logincontroller());
      }),
      //title: 'APP CPYD',
      //theme: ThemeData(
        //primarySwatch: Colors.blue,
      //),
      //home: pantalla_login(),
      home: HomePage(),
    );
  }
}
