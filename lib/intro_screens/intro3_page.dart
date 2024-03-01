import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 27, 1, 53),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            const Positioned(
              top: 80,
              left: 18,
              right: 18,
              child: Text(
                '"En el rugir del motor y el viento en la cara, encuentro la libertad que solo una motocicleta puede ofrecer."',
                style: TextStyle(
                    fontSize: 38,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kawasaki'),
              ),
            ),
            Positioned(
              top: 350, 
              width: 300, 
              height: 450,
              child: Lottie.network(
                  'https://lottie.host/5f350748-0928-455c-863e-d91fcd301e0b/c3rpFrizBs.json'),
            ),
          ],
        ));
  }
}
