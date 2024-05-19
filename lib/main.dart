import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './home_page.dart';
import './model/Cart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context){
      return Cart();
    },
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'shopping cart',
      home: Home_page()
    ),
    );
  }
}
