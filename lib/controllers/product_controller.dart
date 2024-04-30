import 'package:app8/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductController with ChangeNotifier {
  final List<ProductModel> _products = [
    ProductModel(name: "Tshirt", price: 25.0, description: 'Black T-Shirt'),
    ProductModel(name: 'Macbook', price: 10000.00, description: 'M3'),
  ];

  List<ProductModel> get products => _products;
}
