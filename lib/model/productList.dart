import 'package:flutter/material.dart';
import 'package:javier_assignment2/model/product.dart';
import 'package:realm/realm.dart';

class Products extends ChangeNotifier {
  var realm = Realm(Configuration.local([Product.schema]));
  late RealmResults<Product> _items ;

  RealmResults get items => _items;

  
  void addProduct(Product p) {
    realm.write(() {
      realm.add(p);
    });
    fetchAllProduct();
  }

  void fetchAllProduct() {
    _items = realm.all<Product>();
    notifyListeners();
  }
}
