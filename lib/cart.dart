

import 'package:flutter/material.dart';
import 'package:productapp/individual_sizepage.dart';


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
      backgroundColor: const Color.fromARGB(255, 227, 225, 217),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Text('CART',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32
                
              ),
              ),
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return individualproductpage(index1: currentindex);
                            },

                          ));
                        },
                        child: Card(
                          color: const Color.fromARGB(255, 250, 222, 136),
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
                                        style: const TextStyle(
                                          fontSize: 17
                                        ),
                                        textAlign: TextAlign.center,
                                  
                                      ),
                                      ElevatedButton(
                                        child:  Text('Remove'),
                                        style: ButtonStyle(
                                          backgroundColor:const  WidgetStatePropertyAll(Colors.amber),
                                          shape:WidgetStatePropertyAll(
                                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                          )
                                            ),
                                          onPressed: () {
                                            products_to_show_in_cart_index.removeAt(index);
                                            setState(() {
                                              
                                            });
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