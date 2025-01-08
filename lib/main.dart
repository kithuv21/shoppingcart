import 'package:flutter/material.dart';
import 'package:productapp/Homepage.dart';
import './cart.dart';



void main() {
  runApp(const productPage());
}

class productPage extends StatelessWidget {
  const productPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),primaryColor: Colors.amber, fontFamily: 'Montserrat' ),
      debugShowCheckedModeBanner: false,
      home: const homepage() ,
    );
  }
}