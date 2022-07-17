import 'package:flutter/material.dart';

class IntegrantesPage extends StatefulWidget {
  const IntegrantesPage({Key? key}) : super(key: key);

  @override
  State<IntegrantesPage> createState() => _IntegrantesPageState();
}

class _IntegrantesPageState extends State<IntegrantesPage> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("integrantes"),
      ),
    );
  }
} 