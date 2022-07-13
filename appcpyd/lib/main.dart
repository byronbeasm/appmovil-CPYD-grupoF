import 'package:appcpyd/second.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppCPYD',
      debugShowCheckedModeBanner: false,
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

//creacion funcion que llama login post api
//probando aun
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

//segunda prueba

String url = "https://api.sebastian.cl/classroom/swagger-ui/index.html";
