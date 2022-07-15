import 'package:appcpyd/vistas/loginalumno/controllers/lcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class loginwvs extends GetWidget<logincontroller> {
  const loginwvs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: controller.key.value,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: controller.url.value))
          ],
        ));
  }
}
