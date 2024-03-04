import 'package:flutter/material.dart';
import 'main.dart';
import 'registro.dart';

// ignore: camel_case_types
class inicio extends StatelessWidget {
  const inicio({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(),
    );
  }
}

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
        backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      ),
      backgroundColor: const Color.fromARGB(255, 174, 188, 196),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Correo Electrónico',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona el botón de inicio de sesión
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 120, 144,
                      156),
                ),
                child: const Text('Iniciar Sesión',
                    style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10), // Espacio entre los botones
              TextButton(
                onPressed: () {
                  // Acción cuando se presiona el botón de registrarse
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                child: const Text('Registrarse',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}