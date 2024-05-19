import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/Item.dart';
import './model/Cart.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('check out')),
      body: Consumer <Cart>(builder: (context , Cart , child){
        return ListView.builder(itemCount: Cart.bassketitem.length , itemBuilder: (context, i) {
        return Card(
          child: ListTile(
            title: Text('${Cart.bassketitem[i].name}'),
            trailing: IconButton(icon: Icon(Icons.remove), onPressed: () {
              Cart.remove(Cart.bassketitem[i]);
            }),
          ),
        );
      });
      })
    );
  }
}
