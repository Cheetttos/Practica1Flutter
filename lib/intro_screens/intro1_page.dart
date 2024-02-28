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
              child: Text(
                'Kawasaki, la icónica firma japonesa de motocicletas, se erige como un pilar en la industria, fusionando una rica herencia con la vanguardia tecnológica. Desde las audaces y veloces deportivas hasta las versátiles motocicletas de aventura y las elegantes cruceras, el extenso repertorio de Kawasaki refleja una búsqueda constante de la excelencia. Su linaje de éxito en competiciones impulsa la creación de máquinas potentes y de alta calidad, mientras que su estampa estilizada y la incorporación de tecnologías avanzadas consolidan su posición como líder indiscutible en el emocionante universo de las motocicletas.',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kawasaki'),
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
