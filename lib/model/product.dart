import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

part 'product.realm.dart';

@RealmModel()
class _Product{
  late String code;
  late String name;
  late double price;
  bool isFav = false;
}



