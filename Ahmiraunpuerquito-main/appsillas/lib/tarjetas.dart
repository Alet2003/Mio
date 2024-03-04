import 'package:appsillas/mis_reservas.dart';
import 'package:flutter/material.dart';

class Tarjeta extends StatefulWidget {

  @override
  State<Tarjeta> createState() => _TarjetaState();
}

class _TarjetaState extends State<Tarjeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            margin: EdgeInsets.only(top: 20, bottom: 0, right: 10, left: 0),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context, "/");
                  },
                  child: Image.asset(
                    'assets/images/flecha-izquierda.png',
                    width: 30,
                    height: 30,
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                SizedBox(width: 10),
                Text(
                  'Tarjeta',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  margin: EdgeInsets.only(top: 10, bottom: 30),
                  child: Image.asset('assets/images/tarjeta-de-credito.png'),
                ),
              ),
              SizedBox(
                width: 160.0,
                height: 0.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Numero de tarjeta',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Open sans',
                        fontWeight: FontWeight.bold),
                    labelText: 'Numero de tarjeta',
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Propietario',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Propietario',
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'Codigo',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'Codigo',
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    hintText: 'DD/MM',
                    hintStyle:
                    TextStyle(color: Colors.white, fontFamily: 'Open sans'),
                    labelText: 'DD/MM',
                    filled: true,
                    fillColor: Colors.white,
                    focusColor: Colors.grey[700],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0)),
              ),
              Divider(
                height: 140.0,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('¡Comprado!', textAlign: TextAlign.center),
                            content: const Text('Tu compra fue realizada con éxito'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Veiwreservas()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Guardar',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      backgroundColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
