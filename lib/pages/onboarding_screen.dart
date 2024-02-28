import 'package:flutter/material.dart';
import 'package:practica1flutter/intro_screens/intro1_page.dart';
import 'package:practica1flutter/intro_screens/intro2_page.dart';
import 'package:practica1flutter/intro_screens/intro3_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controlar las paginas dentro del onboarding
  PageController _controller = PageController();

  //matener seleccion si estamos en la ultima pagina
  bool OnLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                OnLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //saltar pagina de inicio onboarding
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: const Text(
                    'Saltar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                //puntos del indicador
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                //siguiente pagina
                OnLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: const Text(
                          'Hecho',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 700),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          'Siguiente',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
