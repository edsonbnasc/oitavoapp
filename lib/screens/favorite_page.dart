import 'package:app8/controllers/user_controller.dart';
import 'package:app8/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserController>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites')),
      body: FutureBuilder<List<ProductModel>>(
          future: userProvider.favoriteProductsUser(1),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              List<ProductModel>? myFavorites = snapshot.data;
              if (myFavorites!.isEmpty) {
                return const Center(child: Text('Sem Dados'));
              }
              return ListView.builder(
                  itemCount: myFavorites.length,
                  itemBuilder: (context, index) {
                    return Text(myFavorites[index].name);
                  }
              );
            }
            return const Text('Sem dados');
          }),
    );
  }
}
