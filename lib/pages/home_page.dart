import 'package:flutter/material.dart';
import 'package:practica1flutter/models/product.dart';
import '../models/data.dart';
import 'details_product.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_bottom_bar.dart';

class HomeProducts extends StatefulWidget {
  const HomeProducts({Key? key}) : super(key: key);

  @override
  State<HomeProducts> createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts> {
  final _pageController = PageController(viewportFraction: 0.75);

  double _currentPage = 0.0;
  double indexPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
      if (_currentPage >= 0 && _currentPage < 0.7) {
        indexPage = 0;
      } else if (_currentPage > 0.7 && _currentPage < 1.7) {
        indexPage = 1;
      } else if (_currentPage > 1.7 && _currentPage < 2.7) {
        indexPage = 2;
      }
    });
  }

  Color getColor() {
    late final Color color;
    if (_currentPage >= 0 && _currentPage < 0.7) {
      color = listProduct[0].listImage[0].color;
    } else if (_currentPage > 0.7 && _currentPage < 1.7) {
      color = listProduct[1].listImage[0].color;
    } else if (_currentPage > 1.7 && _currentPage < 2.7) {
      color = listProduct[2].listImage[0].color;
    }

    return color;
  }

  Color getColorL(int index) {
    late final Color color;
    // Definir los colores según el índice
    if (index == indexPage.toInt()) {
      color = listProduct[index].listImage[0].color;
    } else {
      color = Colors.white;
    }
    return color;
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: List.generate(
                    listCategory.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        listCategory[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                            color: getColorL(index)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: listProduct.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  final product = listProduct[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return DetailsChaPage(product: product);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: index == indexPage ? 30 : 60),
                      child: Transform.translate(
                        offset: Offset(index == indexPage ? 0 : 20, 0),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: EdgeInsets.only(
                              top: index == indexPage ? 30 : 50,
                              bottom: 30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.white,
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 40,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        product.marca,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        product.name,
                                        style: const TextStyle(
                                          fontSize: 32,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '\$${product.precio}',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: constraints.maxHeight * 0.2,
                                  left: constraints.maxWidth * 0.05,
                                  right: -constraints.maxWidth * 0.16,
                                  bottom: constraints.maxHeight * 0.2,
                                  child: Hero(
                                    tag: product.name,
                                    child: Image(
                                      image: AssetImage(
                                        product.listImage[0].image,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Material(
                                    color: product.listImage[0].color,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(36),
                                      bottomRight: Radius.circular(36),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: InkWell(
                                      onTap: () {
                                        _showAlert(context,product);
                                      },
                                      child: const SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Icon(
                                          Icons.add,
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              child: CustomBottomBar(color: getColor()),
            )
          ],
        ),
      ),
    );
  }
}

void _showAlert(BuildContext context, Product product) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(product.name),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Marca: ${product.marca}"),
          Text("Precio: \$${product.precio}"),
          Text(product.info),
          // Puedes agregar más información aquí según tus necesidades
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cerrar'),
        ),
      ],
    ),
  );
}
