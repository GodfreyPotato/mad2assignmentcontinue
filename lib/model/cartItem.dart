
import 'package:javier_assignment2/model/product.dart';
import 'package:realm/realm.dart';

part 'cartItem.realm.dart';

@RealmModel()
class _CartItem{
  //this is the product
  late String code;
  late String name;
  late double price;
  late bool isFav;
  //quantity
  int qnt = 1;
 
}

