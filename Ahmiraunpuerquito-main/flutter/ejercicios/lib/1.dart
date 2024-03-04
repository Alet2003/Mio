// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '2.dart';

class PrimeraVista extends StatefulWidget {
  const PrimeraVista({Key? key}) : super(key: key);

  @override
  State<PrimeraVista> createState() => _PrimeraVistaState();
}

class _PrimeraVistaState extends State<PrimeraVista> {
  void _navigateToNextPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            const SegundaVista(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TERROR"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 120, left: 400),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              children: [
                const Text("TERROR"),
                const Icon(Icons.arrow_circle_down_rounded, size: 120),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    _navigateToNextPage();
                  },
                  child: Image.asset(
                    'assets/laMonja2.png',
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
