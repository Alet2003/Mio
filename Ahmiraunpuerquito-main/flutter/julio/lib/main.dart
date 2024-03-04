import 'package:flutter/material.dart';

// Definir una clase para representar la información de cada silla
class Chair {
  final String name;
  final String imageUrl;

  Chair({required this.name, required this.imageUrl});
}

// Lista de sillas
List<Chair> chairs = [
  Chair(name: "Silla 1", imageUrl: "https://d3lome5o0h180x.cloudfront.net/eyJidWNrZXQiOiJiYWNrYm9uZS1hc3NldHMtcHJkIiwia2V5IjoiNTAzMjU1LzUwMzI1NS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1MDAsImhlaWdodCI6MTUwMCwiZml0IjoiY29udGFpbiJ9fX0="),
  Chair(name: "Silla 2", imageUrl: "https://d3lome5o0h180x.cloudfront.net/eyJidWNrZXQiOiJiYWNrYm9uZS1hc3NldHMtcHJkIiwia2V5IjoiNTAzMjU1LzUwMzI1NS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1MDAsImhlaWdodCI6MTUwMCwiZml0IjoiY29udGFpbiJ9fX0="),
  // Agrega más sillas según tus necesidades
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alquiler de Sillas'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: const Color.fromARGB(255, 100, 124, 138), // Cambiar el color de fondo aquí
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 57, 66),
                ),
                child: Text('Menú de Opciones'),
              ),
              ListTile(
                title: const Text('Buscar'),
                onTap: () {
                  // Acción cuando se selecciona la opción de buscar en el menú
                },
              ),
              ListTile(
                title: const Text('Mis Reservas'),
                onTap: () {
                  // Acción cuando se selecciona la opción de mis reservas en el menú
                },
              ),
              ListTile(
                title: const Text('Mi Carrito'),
                onTap: () {
                  // Acción cuando se selecciona la opción de mi carrito en el menú
                },
              ),
              ListTile(
                title: const Text('Perfil'),
                onTap: () {
                  // Acción cuando se selecciona la opción de perfil en el menú
                },
              ),
              ListTile(
                title: const Text('Contacto'),
                onTap: () {
                  // Acción cuando se selecciona la opción de contacto en el menú
                },
              ),
              ListTile(
                title: const Text('Preguntas Frecuentes'),
                onTap: () {
                  // Acción cuando se selecciona la opción de preguntas frecuentes en el menú
                },
              ),
            ],
          ),
        ),
        endDrawerEnableOpenDragGesture: false,
        body: ListView.builder(
          itemCount: chairs.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: SizedBox(
                width: 200,
                height: 250,
                child: Card(
                  color: const Color.fromARGB(255, 100, 124, 138), // Cambiar el color de fondo de la tarjeta aquí
                  child: Column(
                    children: [
                      Image.network(
                        chairs[index].imageUrl,
                        width: 180,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(chairs[index].name),
                      ElevatedButton(
                        onPressed: () {
                          // Acción cuando se presiona el botón "alquilar"
                          // Puedes agregar aquí el código que desees ejecutar al alquilar una silla
                          // Por ejemplo, mostrar un mensaje de confirmación o redireccionar a otra pantalla
                        },
                        child: const Text('Alquilar'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
