import 'package:flutter/material.dart';

void main() {
  runApp(const viewbuscar());
}

// ignore: camel_case_types
class viewbuscar extends StatelessWidget {
  const viewbuscar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Búsqueda'),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Ingrese su búsqueda',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 120, 144, 156),),
                ),
              onPressed: () {
                // Realizar la búsqueda aquí
              },
              child: const Text('Buscar'),
            ),
          ],
        ),
      ),
    );
  }
}