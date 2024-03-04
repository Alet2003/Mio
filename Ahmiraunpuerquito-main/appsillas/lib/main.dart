
import 'package:appsillas/FAQ.dart';
import 'package:appsillas/contacto.dart';
import 'package:appsillas/perfil.dart';
import 'package:flutter/material.dart';
import 'buscar.dart';
import 'login.dart';
import 'detalles.dart';
import 'carrito.dart';
import 'mis_reservas.dart';

// Definir una clase para representar la información de cada silla
class Chair {
  final String name;
  final String imageUrl;
  final int precio;

  Chair({required this.name, required this.imageUrl, required this.precio});
}

class Numsi {
  final int num;

  Numsi({required this.num});
}

void list(n1) {
  n1 + 1;
  // ignore: void_checks
  return n1;
}

// Lista de sillas
List<Chair> chairs = [
  Chair(
      name: "Silla de Comedor Alison Lino Gris Claro",
      imageUrl:
          "https://d3lome5o0h180x.cloudfront.net/eyJidWNrZXQiOiJiYWNrYm9uZS1hc3NldHMtcHJkIiwia2V5IjoiNTAzMjU1LzUwMzI1NS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjE1MDAsImhlaWdodCI6MTUwMCwiZml0IjoiY29udGFpbiJ9fX0=",
      precio: 100),
  Chair(
      name: "Silla Industrial Hierro Y Madera Maciza Reforzada 40x45x80cm",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8eoN_Ij1Zkstp_mkhgb55MS3Ko147xl_RfQ&usqp=CAU",
      precio: 100),
  Chair(
      name: "Silla plástica RIMAX con brazo Eterna color Wengue",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPVqUGWE7JrAOjBM-6CLQBhwHf3mHEtr3k3A&usqp=CAU",
      precio: 100),
  // Agrega más sillas según tus necesidades
];

void main() {
  runApp(const inicio());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Alquiler de Sillas'),
          backgroundColor: const Color.fromARGB(255, 174, 188, 196),
        ),
        backgroundColor: const Color.fromARGB(
            255, 174, 188, 196), // Cambiar el color de fondo aquí
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 120, 144, 156),
                ),
                child: Text('Menú de Opciones'),
              ),
              ListTile(
                title: const Text('Buscar'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const viewbuscar()),
                  );
                },
              ),
              ListTile(
                title: const Text('Mis Reservas'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Veiwreservas()),
                  );
                },
              ),
              ListTile(
                title: const Text('Mi Carrito'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Viewcarrito()),
                  );
                },
              ),
              ListTile(
                title: const Text('Perfil'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Perfil()));
                },
              ),
              ListTile(
                title: const Text('Contacto'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Contacto()));
                },
              ),
              ListTile(
                title: const Text('Preguntas Frecuentes'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FAQ()));
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
                  color: const Color.fromARGB(255, 120, 144,
                      156), // Cambiar el color de fondo de la tarjeta aquí
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ViewAlquilar(
                                  silla: chairs[index],
                                )));
                        },
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 174, 188, 196)),
                        ),
                        child: const Text('Alquilar',
                            style: TextStyle(
                              color: Color.fromARGB(255, 120, 144, 156),
                            )),
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