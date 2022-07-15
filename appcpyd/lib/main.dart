import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:appcpyd/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP CPYD',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: inicio(),
    );
  }
}

class inicio extends StatefulWidget {
  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //creacion cuadro correo
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              //creacion cuadro contrasena
              obscureText: true,
              controller: passController,
              decoration: InputDecoration(
                  labelText: "contrasena",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.password)),
            ),
            SizedBox(
              height: 45,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  login();
                },
                icon: Icon(
                  Icons.login,
                  size: 18,
                ),
                label: Text("Entrar")),
          ],
        ))),
      ),
    );
  }

  Future<void> login() async {
    if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://api.sebastian.cl/classroom/swagger-ui/index.html#/authentication-rest/login"),
          body: ({
            'email': emailController.text,
            'contrasena': passController.text
          }));
      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => segundavista()));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("credenciales invalidas.")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("campos vacios no permitidos.")));
    }
  }
}
