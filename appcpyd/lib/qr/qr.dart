import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scaner;
import 'package:permission_handler/permission_handler.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 38, 46),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 184, 176),
        title: Text('Lector QR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
              child: GestureDetector(
                child: Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                  size: 100,
                ),
                onTap: () => _scano(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
              child: GestureDetector(
                child: Icon(
                  Icons.qr_code_scanner_outlined,
                  color: Colors.white,
                  size: 100,
                ),
                onTap: () => _scan(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _scan() async {
    if (await Permission.camera.request().isGranted) {
      // Permiso concedido
      var barcode = await scaner.scan();
    } else {
      Text('No hay permisos de camara');
    }
  }

  Future _scano() async {
    if (await Permission.camera.request().isGranted) {
      // Permiso concedido
      var barcode = await scaner.scan();
    } else {
      Text('No hay permisos de camara');
    }
  }
}
