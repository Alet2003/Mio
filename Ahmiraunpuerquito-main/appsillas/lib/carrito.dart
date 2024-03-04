import 'package:appsillas/tarjetas.dart';
import 'package:flutter/material.dart';
import 'mis_reservas.dart';

class Viewcarrito extends StatefulWidget {
  @override
  _ViewcarritoState createState() => _ViewcarritoState();
}

class _ViewcarritoState extends State<Viewcarrito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carrito"),
        backgroundColor: Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: Color.fromARGB(255, 174, 188, 196),
      body: ListView.builder(
        itemCount: Carrito.chairs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    Carrito.chairs[index].imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Text(
                    Carrito.chairs[index].name,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      // Implementa la lógica para eliminar la silla del carrito.
                      setState(() {
                        Carrito.removeFromCarrito(index);
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(
                      bottom: 30,
                      right: 20,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          if (Carrito.chairs.isNotEmpty) {
            final nuevaReserva = Reserva(sillas: List.from(Carrito.chairs));

            // Agregar la reserva a la lista de reservas
            MisReservas.addReserva(nuevaReserva);

            // Limpiar el carrito (eliminar todas las sillas del carrito)
            Carrito.clearCarrito();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tarjeta()),
            );

          } else {
            // Mostrar un mensaje al usuario indicando que el carrito está vacío
          }
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(200, 50)),
          backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 120, 144, 156),
          ),
        ),
        child: Text(
          'Pagar',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}

class Carrito {
  static List<Silla> chairs = [];

  static void addToCarrito(Silla silla) {
    chairs.add(silla);
  }

  static void removeFromCarrito(int index) {
    chairs.removeAt(index);
  }

  static void clearCarrito() {
    chairs.clear();
  }
}

class Silla {
  final String imageUrl;
  final String name;

  Silla({required this.imageUrl, required this.name});
}
