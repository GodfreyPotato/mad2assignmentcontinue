// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItem.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CartItem extends _CartItem
    with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  CartItem(
    String code,
    String name,
    double price,
    bool isFav, {
    int qnt = 1,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<CartItem>({
        'qnt': 1,
      });
    }
    RealmObjectBase.set(this, 'code', code);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'price', price);
    RealmObjectBase.set(this, 'isFav', isFav);
    RealmObjectBase.set(this, 'qnt', qnt);
  }

  CartItem._();

  @override
  String get code => RealmObjectBase.get<String>(this, 'code') as String;
  @override
  set code(String value) => RealmObjectBase.set(this, 'code', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  double get price => RealmObjectBase.get<double>(this, 'price') as double;
  @override
  set price(double value) => RealmObjectBase.set(this, 'price', value);

  @override
  bool get isFav => RealmObjectBase.get<bool>(this, 'isFav') as bool;
  @override
  set isFav(bool value) => RealmObjectBase.set(this, 'isFav', value);

  @override
  int get qnt => RealmObjectBase.get<int>(this, 'qnt') as int;
  @override
  set qnt(int value) => RealmObjectBase.set(this, 'qnt', value);

  @override
  Stream<RealmObjectChanges<CartItem>> get changes =>
      RealmObjectBase.getChanges<CartItem>(this);

  @override
  Stream<RealmObjectChanges<CartItem>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CartItem>(this, keyPaths);

  @override
  CartItem freeze() => RealmObjectBase.freezeObject<CartItem>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'code': code.toEJson(),
      'name': name.toEJson(),
      'price': price.toEJson(),
      'isFav': isFav.toEJson(),
      'qnt': qnt.toEJson(),
    };
  }

  static EJsonValue _toEJson(CartItem value) => value.toEJson();
  static CartItem _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'code': EJsonValue code,
        'name': EJsonValue name,
        'price': EJsonValue price,
        'isFav': EJsonValue isFav,
      } =>
        CartItem(
          fromEJson(code),
          fromEJson(name),
          fromEJson(price),
          fromEJson(isFav),
          qnt: fromEJson(ejson['qnt'], defaultValue: 1),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CartItem._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, CartItem, 'CartItem', [
      SchemaProperty('code', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('price', RealmPropertyType.double),
      SchemaProperty('isFav', RealmPropertyType.bool),
      SchemaProperty('qnt', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
