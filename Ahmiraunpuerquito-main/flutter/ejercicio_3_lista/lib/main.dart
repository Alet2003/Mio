import 'package:flutter/material.dart';

class MyMatrimonio extends StatefulWidget {
  const MyMatrimonio({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyMatrimonioState createState() => _MyMatrimonioState();
}

class _MyMatrimonioState extends State<MyMatrimonio> {
  final List<TituloConElementos> _items = [
    TituloConElementos("HOGAR", ["Vajilla", "Vasos", "Copas de vidrio", "Licuadora"]),
    TituloConElementos("MODA", ["Vestido", "Corbata", "Zapatos", "Bolso"]),
    TituloConElementos("OTROS", ["Vajilla", "Vasos", "Copas de vidrio", "Licuadora"]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas Dependientes'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: const EdgeInsets.all(0),
          dividerColor: Colors.grey,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _items[index].isExpanded = !isExpanded;
            });
          },
          children: _items.map<ExpansionPanel>((TituloConElementos item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.titulo),
                );
              },
              body: ListTile(
                title: Column(
                  children: item.elementos.map<Widget>((elemento) {
                    return ListTile(
                      title: Text(elemento),
                    );
                  }).toList(),
                ),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TituloConElementos {
  String titulo;
  List<String> elementos;
  bool isExpanded;

  TituloConElementos(this.titulo, this.elementos, {this.isExpanded = false});
}