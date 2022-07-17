import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scaner;

class qr extends StatelessWidget {
  const qr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lector de Qr'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: GestureDetector(
                child: Icon(
                  Icons.border_clear,
                  color: Colors.green,
                  size: 50,
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
