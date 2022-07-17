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
      appBar: AppBar(
        title: Text("asistencia"),
      ),
    );
  }
} 