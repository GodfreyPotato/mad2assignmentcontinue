import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

class Cart extends ChangeNotifier{
  late RealmResults _cartList ;

  RealmResults get cart => _cartList;




}