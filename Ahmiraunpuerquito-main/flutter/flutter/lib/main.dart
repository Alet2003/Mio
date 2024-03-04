import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // Encabezado personalizado
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 115, 16, 227),
            expandedHeight: 290,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Desplazamiento Personalizado'),
              background: Image.network(
                'assets/documental.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Lista de elementos
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // Contenido de la lista aquí
                return Container(
                  height: 100,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  alignment: Alignment.center,
                  child: Text('Elemento $index', style: const TextStyle(color: Colors.white, fontSize: 20.0)),
                );
              },
              childCount: 11, // Cantidad de elementos en la lista
            ),
          ),
        ],
      ),
    );
  }
}