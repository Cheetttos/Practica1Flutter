import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight +  50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('images/logo.png'),
                const SizedBox(width:  8), // Espacio entre la imagen y el texto
                const Text(
                  'KawaPulsar',
                  style: TextStyle(
                    fontSize:  24, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Peso del texto
                    color: Color.fromARGB(255, 81, 168, 64), // Color del texto
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down_circle_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
