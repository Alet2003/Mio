// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '1.dart';

class TerceraVista extends StatelessWidget {
  const TerceraVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACCION'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 120, left: 400),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                const Text("Accion"),
                const Icon(
                  Icons.monetization_on_outlined,
                  size: 120,
                ),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrimeraVista()),
                    );
                  },
                  child: Image.asset(
                    'assets/BAD.webp',
                    width: 300,
                    height: 300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
