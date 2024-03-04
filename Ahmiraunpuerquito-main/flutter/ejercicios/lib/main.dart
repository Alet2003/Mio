import 'package:flutter/material.dart';
import '1.dart';
import '2.dart';
import '3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArbolWidget(),
    );
  }
}

class ArbolWidget extends StatefulWidget {
  const ArbolWidget({super.key});

  @override
  State<ArbolWidget> createState() => _ArbolWidgettState();
}

class _ArbolWidgettState extends State<ArbolWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 230, left: 500),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrimeraVista()),
                );
            }, icon: const Icon(Icons.arrow_downward_rounded) ),
            const SizedBox(width: 30),
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SegundaVista()),
                );
            }, icon: const Icon(Icons.remove_red_eye_outlined,)),
            const SizedBox(width: 30),
            IconButton(onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TerceraVista()),
                );
            }, icon: const Icon(Icons.monetization_on_outlined))
          ],
        ),
      ),
    );
  }
}
