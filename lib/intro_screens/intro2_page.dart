import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 29, 215, 218),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const Positioned(
              top: 30,
              left: 15,
              right: 15,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Pulsar',
                  style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 80,
              left: 18,
              right: 18,
              child: Text(
                'Lanzada en 2001 por Bajaj Auto, la serie de motocicletas Pulsar ha dejado una marca duradera con su diseño moderno y rendimiento eficiente. Con innovaciones tecnológicas y una expansión continua de la línea, las Bajaj Pulsar son reconocidas globalmente por su estilo distintivo y sólido rendimiento.',
                style: TextStyle(
                    fontSize: 27,
                    color: Color.fromARGB(255, 39, 2, 225),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Modelo'),
              ),
            ),
            Positioned(
                bottom: 150,
                child: Image.asset(
                  'images/pulsar_roja.png',
                  width: 350,
                  height: 350,
                ))
          ],
        ));
  }
}
