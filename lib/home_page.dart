import 'package:ex_final/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/Item.dart';
import './model/Cart.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<Item> items = [
    Item(name: 's20 ultra', price: 250),
    Item(name: 's23', price: 300),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Checkout();
                    }));
                  },
                  icon: Icon(Icons.add_shopping_cart)),
              Padding(
                  padding: const EdgeInsets.only(left: 13, right: 15),
                  child: Consumer<Cart>(
                    builder: (context, Cart, child) {
                      return Text(" ${Cart.count}");
                    },
                  ))
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(child: Consumer<Cart>(
              builder: (context, Cart, child) {
                return ListTile(
                  title: Text('${items[i].name}'),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Cart.add(items[i]);
                    },
                  ),
                );
              },
            ));
          }),
    );
  }
}
