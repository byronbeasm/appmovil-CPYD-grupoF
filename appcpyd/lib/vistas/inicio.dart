import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 38, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 184, 176),
        title: Text("Inicio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Bienvenido', style: TextStyle(color: Colors.white,  fontSize: 30)),
            Text('Para ingresar a la sala escanee el codigo QR', style: TextStyle(color: Colors.white,  fontSize: 15)),
            Text('Para salir de la sala escanee el codigo QR', style: TextStyle(color: Colors.white,  fontSize: 15)),
          ],
        )
      )
    );
  }
} 