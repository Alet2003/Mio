import 'package:flutter/material.dart';


class Contacto extends StatelessWidget {
  const Contacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: Card(
        margin: const EdgeInsets.fromLTRB(50, 120, 50, 0),
        color: const Color.fromARGB(255, 120, 144, 156),
        child: SizedBox(
          height: 400,
          width: 400,
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(20)),
            IconButton(onPressed: () {
            }, icon: const Icon(Icons.map_outlined)),
            const Text(
              "Calle x # xx-xx",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            IconButton(onPressed: () {}, icon: const Icon(Icons.facebook_outlined)),
            const Text(
              "ATSA_",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            const Text(
              "ATSA_",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
            const SizedBox(height: 10),
            IconButton(onPressed: () {}, icon: const Icon(Icons.messenger_outline_rounded)),
            const Text(
              "3001234567",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
            ),
          ]),
        ),
      ),
    );
  }
}
