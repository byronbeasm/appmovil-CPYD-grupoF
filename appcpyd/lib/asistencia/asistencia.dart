import 'package:flutter/material.dart';

class AsistenciaPage extends StatefulWidget {
  const AsistenciaPage({Key? key}) : super(key: key);

  @override
  State<AsistenciaPage> createState() => _AsistenciaPageState();
}

class _AsistenciaPageState extends State<AsistenciaPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 38, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 184, 176),
        title: Text("Asistencia"),
      ),
      );
  }
} 