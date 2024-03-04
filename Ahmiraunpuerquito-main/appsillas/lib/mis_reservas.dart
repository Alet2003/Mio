import 'package:flutter/material.dart';
import 'carrito.dart';


class MisReservas {
  static List<Reserva> reservas = [];

  static void addReserva(Reserva reserva) {
    reservas.add(reserva);
  }

  static void removeFromReservas(int index) {
    if (index >= 0 && index < reservas.length) {
      reservas.removeAt(index);
    }
  }
}

class Reserva {
  List<Silla> sillas;

  Reserva({required this.sillas});
}

class Veiwreservas extends StatelessWidget {
  const Veiwreservas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mis reservas"),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: ListView.builder(
        itemCount: MisReservas.reservas.length,
        itemBuilder: (context, index) {
          final reserva = MisReservas.reservas[index];

          return Column(
            children: reserva.sillas.map((silla) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: SizedBox(
                  width: 200,
                  height: 250,
                  child: Card(
                    color: const Color.fromARGB(255, 120, 144, 156),
                    child: Column(
                      children: [
                        Image.network(
                          silla.imageUrl,
                          width: 180,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        Text(silla.name),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
