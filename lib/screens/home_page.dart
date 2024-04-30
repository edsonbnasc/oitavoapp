import 'package:app8/controllers/product_controller.dart';
import 'package:app8/controllers/user_controller.dart';
import 'package:app8/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Produtos'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
        body: Consumer<ProductController>(builder: (context, product, child) {
          List<ProductModel> products = product.products;
          return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Text(products[index].name);
              });
        }),
        body: Consumer2<ProductController, UserController>(
            builder: (context, product, userController, child) {
          List<ProductModel> products = product.products;
        }));
  }
}
