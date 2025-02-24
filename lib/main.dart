import 'package:flutter/material.dart';
import 'package:javier_assignment2/model/cartList.dart';
import 'package:javier_assignment2/model/productList.dart';
import 'package:javier_assignment2/screen/homeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Cart(),
      ),
      ChangeNotifierProvider(create: (context) => Products())
    ],
    child: ShopApp(),
  ));
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
