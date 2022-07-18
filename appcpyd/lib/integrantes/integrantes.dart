import 'package:flutter/material.dart';


class IntegrantesPage extends StatefulWidget {
  const IntegrantesPage({Key? key}) : super(key: key);

  @override
  State<IntegrantesPage> createState() => _IntegrantesPageState();
}

class Integrante {
  final String Name;
  final String Email;
  final ImageProvider Photo;

  const Integrante({
    required this.Name,
    required this.Email,
    required this.Photo,
  });
}

class _IntegrantesPageState extends State<IntegrantesPage> {

  List<Integrante> integrantes = [
    const Integrante(
      Name: 'Byron Beas',
      Email: 'byron.beasm@utem.cl',
      Photo: AssetImage('assets/byron.png'),
      ),
    const Integrante(
      Name: 'Ignacio Delgado',
      Email: 'ignacio.delgadov@utem.cl',
      Photo: AssetImage('assets/ignacio.png'),
      ),
    const Integrante(
      Name: 'Matias Inostroza',
      Email: 'matias.inostrozaq@utem.cl',
      Photo: AssetImage('assets/matias.png'),
      ),
  ];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 38, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 184, 176),
        title: Text("Integrantes"),
      ),
      body: ListView.builder(
        itemCount: integrantes.length,
        itemBuilder: (context, index) {
          final integrante = integrantes[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: integrante.Photo,
              ),
              title: Text(integrante.Name),
              subtitle: Text(integrante.Email),
            ),
          );
        },
      ),
    );
  }
} 