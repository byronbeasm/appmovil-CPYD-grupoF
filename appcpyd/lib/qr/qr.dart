import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scaner;

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
              padding: const EdgeInsets.symmetric(horizontal: 155, vertical: 100),
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
    var barcode = await scaner.scan();
  }
}

