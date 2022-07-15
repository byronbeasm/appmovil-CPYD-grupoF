import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class loginwv extends StatefulWidget {
  final url;
  loginwv(this.url);
  @override
  createState() => _loginwvState(this.url);
}

class _loginwvState extends State<loginwv> {
  var _url;
  final _key = UniqueKey();
  _loginwvState(this._url);
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
              userAgent: "random",
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
              navigationDelegate: (NavigationRequest request) {
                if (request.url.contains('result')) {
                  // I was tring to use webviewController to reload the url, but this creates a loop that kept reloading the webview :(
                  var url = Uri.parse(request.url);
                  Get.toNamed('/home', arguments: {
                    'jwt': url.queryParameters['jwt'],
                    'token': url.queryParameters['token']
                  });
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ))
          ],
        ));
  }
}
