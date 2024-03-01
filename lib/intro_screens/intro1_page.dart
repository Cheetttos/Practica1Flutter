import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 152, 246, 140),
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
                  'Kawasaki',
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
                'Kawasaki, fundada en 1878, es una icónica marca japonesa de motocicletas reconocida por su audacia e innovación. Con la serie Ninja en los años 80, estableció estándares en motocicletas deportivas. Con estilo vibrante y tecnología avanzada, Kawasaki lidera la industria, atrayendo a seguidores leales globalmente.',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Modelo'),
              ),
            ),
            Positioned(
                bottom: 150,
                child: Image.asset(
                  'images/NINJA.png',
                  width: 350,
                  height: 350,
                ))
          ],
        ));
  }
}
