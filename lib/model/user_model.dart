import 'package:app8/model/product_model.dart';

class UserModel {
  String username;
  String email;
  List<ProductModel> products = [];
  List<ProductModel> favorites = [];

  UserModel({required this.username, required this.email});

  void addProduct(ProductModel product) {
    products.add(product);
  }

  void addFavorite(ProductModel product) {
    if (!favorites.contains(product)) {
      favorites.add(product);
    }
  }
}
