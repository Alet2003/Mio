import 'package:appsillas/login.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: Card(
        margin: const EdgeInsets.fromLTRB(90, 120, 50, 0),
        color: const Color.fromARGB(255, 120, 144, 156),
        child: SizedBox(
          height: 400,
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(20)),
            const Text(
              "INFORMACION BASICA",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Text(
              "Nombre: Username",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            const Text(
              "Correo: Example@example.com",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            const Text(
              "Direccion: Calle falsa # X",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            const Text(
              "Documento: 0.000.000.000",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 100),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const login()));
            }, child: const Text("CERAR SESION", style: TextStyle(fontSize: 20, backgroundColor: Colors.black))),
          ]),
        ),
      ),
    );
  }
}
