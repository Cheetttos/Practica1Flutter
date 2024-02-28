import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class chargeScreen extends StatefulWidget {
  const chargeScreen({super.key});

  @override
  State<chargeScreen> createState() => _chargeScreenState();
}

class _chargeScreenState extends State<chargeScreen> {
  @override
  void initState() {
    super.initState();

    // Configurar un temporizador para esperar 5 segundos
    Timer(Duration(seconds: 5), () {
      // Navegar a la siguiente pantalla después de 5 segundos
      Navigator.pushNamed(context, "/onboard");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Lottie.network(
                    'https://lottie.host/cd293b7b-ed14-4b46-a1ca-fa1506da2d22/JyTAFyid6j.json'),
                const Positioned(
                    top: 1,
                    child: Text(
                      'Cargando...',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kawasaki'),
                    )),
              ],
            ),
          )),
    );
  }
}
