import 'package:flutter/material.dart';
import 'carrito.dart'; // Asegúrate de importar tu clase Carrito aquí
import 'main.dart';

class ViewAlquilar extends StatelessWidget {
  final Chair silla;

  const ViewAlquilar({Key? key, required this.silla}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles"),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    silla.imageUrl,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  silla.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Precio: \$${silla.precio.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 50),
                Container(
                  margin:
                  const EdgeInsets.only(left: 10, right: 10, bottom: 100),
                  color:
                  const Color.fromARGB(255, 120, 144, 156), // Fondo oscuro
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'INCLUYE: Silla elaborada en madera contrachapada, tapizada en tela tipo Lino suave al tacto color Gris Claro, patas de madera color Natural Oscuro. Medidas: 43x50 cm. *Requiere servicio de armado.',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Silla sillaSeleccionada = Silla(
                      imageUrl: silla.imageUrl,
                      name: silla.name,
                    );

                    // Agregar la silla al carrito
                    Carrito.addToCarrito(sillaSeleccionada);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Viewcarrito()),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300, 50)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 120, 144, 156)),
                  ),
                  child: const Text('Alquilar',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}