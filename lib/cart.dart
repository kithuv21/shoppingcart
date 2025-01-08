import 'dart:math';

import 'package:flutter/material.dart';
import 'package:productapp/main.dart';
import './product info.dart';

class cartproducts extends StatefulWidget {
  const cartproducts({super.key});

  @override
  State<cartproducts> createState() => _cartproductsState();
}

class _cartproductsState extends State<cartproducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 50, 5),
              child: Text('CART',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
                
              ),
              textAlign: TextAlign.center,),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products_to_show_in_cart_index.length,
                itemBuilder:(context, index) {
                  int currentindex=products_to_show_in_cart_index[index] as int;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 200,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      product_infos[currentindex]['Name'] as String,
                                      style: TextStyle(
                                        fontSize: 17
                                      ),
                                      textAlign: TextAlign.center,
                                
                                    ),
                                    ElevatedButton(
                                      child: Text('Remove'),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(Colors.amber),
                                        shape:WidgetStatePropertyAll(
                                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                        )
                                          






                                        ),
                                        onPressed: () {
                                          
                                        },
                                      ),
                                      
                                    
                                  ],
                                ),
                              ),
                              Image(image: AssetImage(product_infos[currentindex]['image']as String))
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
            
          ],
        ),
      ),
    );
  }
}