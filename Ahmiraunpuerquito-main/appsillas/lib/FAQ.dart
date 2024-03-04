import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas Frecuentes'),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: Card(
        margin: const EdgeInsets.fromLTRB(90, 120, 50, 0),
        color: const Color.fromARGB(255, 120, 144, 156),
        child: SizedBox(
          height: 400,
          width: 400,
          child: Column(children: [
            const Padding(padding: EdgeInsets.all(20)),
            TextButton(
                onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('', textAlign: TextAlign.center),
            content: const Text('para alquilar una silla debera ir a la pantalla principal y dar click en alquilar posteriormente  debera hacer click en pagar '),
            actions: <Widget>[
            ],
          ),
        ),
                child: const Text(
                  "¿Como Alquilo una silla?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('', textAlign: TextAlign.center),
            content: const Text('Sus reservas podran ser vistas en el apartado  del menu queseencuentra en la pantalla principal, ahi encontraras la opcion de mis reservas'),
            actions: <Widget>[
            ],
          ),
        ),
                child: const Text(
                  "¿Donde veo mis reservas?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('', textAlign: TextAlign.center),
            content: const Text(''),
            actions: <Widget>[
            ],
          ),
        ),
                child: const Text(
                  "¿Cual es la disponibilidad de sillas?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('', textAlign: TextAlign.center),
            content: const Text('su reserva no podra ser modificada despues de realizadala compra'),
            actions: <Widget>[
            ],
          ),
        ),
                child: const Text(
                  "¿Puedo modificar mi reserva?",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}