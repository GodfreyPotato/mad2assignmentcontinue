import 'package:flutter/material.dart';
import 'package:javier_assignment2/model/cartItem.dart';
import 'package:javier_assignment2/model/cartList.dart';
import 'package:javier_assignment2/model/product.dart';
import 'package:javier_assignment2/model/productList.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  var codeCtrl = TextEditingController();
  var nameCtrl = TextEditingController();
  var priceCtrl = TextEditingController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<Products, Cart>(
      builder: (context, product, cart, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("View Products"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Add Product"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Code"),
                                  TextField(
                                    controller: codeCtrl,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Name/Description"),
                                  TextField(
                                    controller: nameCtrl,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text("Price"),
                                  TextField(
                                    controller: priceCtrl,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: ElevatedButton(
                                          onPressed: () {

                                            //need validate number
                                            if (codeCtrl.text.isEmpty||priceCtrl.text.isEmpty||nameCtrl.text.isEmpty) {
                                              ScaffoldMessenger.of(context)
                                                  .hideCurrentSnackBar();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Invalid Input!")));
                                            } else {
                                              product.addProduct(Product(codeCtrl.text, nameCtrl.text, double.parse(priceCtrl.text)));
                                              ScaffoldMessenger.of(context)
                                                  .hideCurrentSnackBar();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Product Added!")));
                                            }
                                          },
                                          child: Text("Add Product")))
                                ],
                              ),
                            ));
                  },
                  icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListView.builder(
              itemCount: product.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined)),
                    title: Text("hello"),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart_outlined)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
