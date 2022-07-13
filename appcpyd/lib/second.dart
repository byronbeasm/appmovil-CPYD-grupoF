import 'package:flutter/material.dart';

class segundavista extends StatefulWidget {
  @override
  State<segundavista> createState() => _segundavistaState();
}

class _segundavistaState extends State<segundavista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bienvenido"),
            SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.exit_to_app,
                  size: 18,
                ),
                label: Text("Salir"))
          ],
        ),
      )),
    );
  }
}
