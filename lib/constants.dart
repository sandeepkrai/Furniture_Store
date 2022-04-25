import 'product_model.dart';
import 'package:flutter/material.dart';

class Constants {
  static List<ProductModel> chairs = [
    ProductModel(
      id: 1,
      imagePath: 'assets/images/1.png',
      price: 2400,
      name: 'Matteo Armchair',
      productType: 'Chair', description: '',
    ),
    ProductModel(
      id: 2,
      imagePath: 'assets/images/2.png',
      price: 2400,
      name: 'Araceli Armchair',
      productType: 'Chair', description: '',
    ),
    ProductModel(
      id: 3,
      imagePath: 'assets/images/3.png',
      price: 7600,
      name: 'Primose Armchair',
      productType: 'Chair', description: '',
    ),
    ProductModel(
      id: 4,
      imagePath: 'assets/images/4.png',
      price: 3320,
      name: 'Nolin Armchair',
      productType: 'Chair', description: '',
    ),
    ProductModel(
      id: 5,
      imagePath: 'assets/images/5.png',
      price: 5000,
      name: 'Crandall Armchair',
      productType: 'Chair', description: '',
    ),
    ProductModel(
      id: 6,
      imagePath: 'assets/images/6.png',
      price: 5500,
      name: 'Donham Armchair',
      productType: 'Chair', description: '',
    ),
  ];

  static List<ProductModel> bestOffers = [
    ProductModel(
      id: 7,
      imagePath: 'assets/images/sofa-1.png',
      price: 2400,
      name: 'Ingrit MV',
      productType: 'Sofa', description: '',
    ),
    ProductModel(
      id: 8,
      imagePath: 'assets/images/sofa-2.png',
      price: 2400,
      name: 'Montesque',
      productType: 'Sofa', description: '',
    ),
    ProductModel(
      id: 9,
      imagePath: 'assets/images/sofa-3.png',
      price: 7600,
      name: 'Nolin Sofa',
      productType: 'Sofa', description: '',
    ),
    ProductModel(
      id: 10,
      imagePath: 'assets/images/sofa-1.png',
      price: 2400,
      name: 'Ingrit MV',
      productType: 'Sofa', description: '',
    ),
    ProductModel(
      id: 11,
      imagePath: 'assets/images/sofa-2.png',
      price: 2400,
      name: 'Montesque',
      productType: 'Sofa', description: '',
    ),
    ProductModel(
      id: 12,
      imagePath: 'assets/images/sofa-3.png',
      price: 7600,
      name: 'Nolin Sofa',
      productType: 'Sofa', description: '',
    ),
  ];
}







class ColorConstants{
  static const primaryColor = Color(0xff2A2D31);
}
