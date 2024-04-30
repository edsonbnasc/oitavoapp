import 'package:app8/controllers/product_controller.dart';
import 'package:app8/screens/home_page.dart';
import 'package:app8/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (context) => UserController()),
        ChangeNotifierProvider(create: (content) => ProductController()),
      ],
      child: const MaterialApp(
        title: 'Ecommerce',
        home: HomePage(),
        )
    );
  }
}
