import 'package:app8/model/product_model.dart';
import 'package:app8/model/user_model.dart';
import 'package:flutter/material.dart';

class UserController with ChangeNotifier {
  List<UserModel> users = [
    UserModel(username: "Edson", email: "edson@senai.com.br")
  ];

  void addToCart(String userEmail, ProductModel product) {
    UserModel? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isEmpty) {
      user.products.add(product);
    }
  }

  void addFavorite(String userEmail, ProductModel product) {
    UserModel? user = users.firstWhere((u) => u.email == userEmail);
    if (user.email.isNotEmpty) {
      if (!user.favorites.contains(product)) {
        user.favorites.add(product);
      }
    }
  }

  Future<List<ProductModel>> favoriteProductsUser(index) async {
    return users[index].favorites;
    }
}
