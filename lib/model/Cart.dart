import 'package:flutter/material.dart';
import './Item.dart';
class Cart extends ChangeNotifier  {
  List<Item> _items = [];
  double _price = 0.0 ;

  void add(Item item){
    _items.add(item);
    _price += item.price! ;
    notifyListeners();
  }
  int get count{
    return _items.length ;
  }

  double get totalprice {
    return _price ;
  }

  List<Item> get bassketitem {
    return _items ;
  }
}