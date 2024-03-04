// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '3.dart';

class SegundaVista extends StatelessWidget {
  const SegundaVista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COMEDIA"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 120, left: 400),
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                const Text("Comedia"),
                const Icon(Icons.remove_red_eye_outlined , size: 120),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TerceraVista()),
                    );
                  },
                  child: Image.asset(
                    'assets/scn2.jpg',
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
