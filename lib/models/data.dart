import 'package:flutter/material.dart';
import 'product.dart';

final listCategory = ['Ninja H2R', 'Ninja H2SX', 'Pulsar 160'];

final listProduct = [
  Product(
    'Ninja H2R',
    'Kawazaki',
    '1,000,000.00',
    3,
    [
      ImageProduct(
        'images/ninjah2r.png',
        const Color.fromARGB(255, 51, 55, 50),
      ),
      ImageProduct(
        'images/ninjah2r_negra.png',
        const Color.fromARGB(255, 13, 14, 14),
      ),
      ImageProduct(
        'images/ninjah2r_blanca.png',
        const Color.fromARGB(255, 255, 255, 255),
      ),
    ],
    'La Ninja HR2 es la máxima expresión de la tecnología y el rendimiento de Kawasaki. Con un motor sobrealimentado de 998cc que produce 230 CV, esta moto te ofrece una aceleración brutal y una velocidad máxima de más de 300 km/h. Además, cuenta con suspensión electrónica semiactiva, control de tracción y ABS de última generación, y un cuadro de instrumentos TFT a color con conectividad Bluetooth. Su diseño agresivo y aerodinámico te hará sentir como un piloto profesional.',
  ),
  Product(
    'Ninja H2SX',
    'Kawasaki',
    '1,200,000.00',
    4,
    [
      ImageProduct(
        'images/ninjah2sx.png',
        const Color.fromARGB(255, 26, 146, 7),
      ),
      ImageProduct(
        'images/ninjah2sx_negra.png',
        const Color.fromARGB(255, 0, 0, 0),
      ),
      ImageProduct(
        'images/ninjah2sx_roja.png',
        const Color(0xffB50D0D),
      ),
    ],
    'La Ninja H2SX es la moto perfecta para aquellos que buscan una combinación de deportividad y comodidad. Con un motor sobrealimentado de 998cc que produce 200 CV, esta moto te ofrece una gran potencia y autonomía. Además, cuenta con suspensión electrónica semiactiva, control de tracción y ABS de última generación, un parabrisas alto para mayor protección contra el viento, y la posibilidad de equipar maletas para viajes largos.',
  ),
  Product(
    'RS 160',
    'Pulsar Bajaj',
    '50,000.00',
    5,
    [
      ImageProduct(
        'images/pulsar.png',
        const Color.fromARGB(255, 103, 102, 103),
      ),
      ImageProduct(
        'images/pulsar_roja.png',
        const Color.fromARGB(255, 184, 8, 8),
      ),
      ImageProduct(
        'images/pulsar_azul.png',
        const Color.fromARGB(255, 13, 33, 181),
      ),
    ],
    'La Pulsar 160 es una moto económica y de bajo mantenimiento ideal para principiantes o como primera moto. Con un motor de 160cc que produce 15 CV, esta moto te ofrece una buena aceleración y velocidad para una moto de su clase. Además, cuenta con frenos de disco delanteros y traseros para mayor seguridad, y un diseño deportivo y moderno.'
  ),
];
