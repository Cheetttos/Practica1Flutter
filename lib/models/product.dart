import 'package:flutter/material.dart';

class ImageProduct {
  ImageProduct(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Product {
  Product(
    this.name,
    this.marca,
    this.precio,
    this.ratting,
    this.listImage,
    this.info
  );
  final String name;
  final String marca;
  final String precio;
  final int ratting;
  final List<ImageProduct> listImage;
  final String info;
}