import 'package:flutter/material.dart';
import 'package:productapp/cart.dart';
import './homepagereal.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List filters=['All','LP','Allen Solly','US polo' ];
 int selectedindex=0;
 int currentpage=0;
 
  
  void initSate(){


  }

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 225, 217),
      body: currentpage==0?firstpage():cartproducts(),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentpage,
        items: [
          BottomNavigationBarItem(icon: GestureDetector(child: Icon(Icons.home,size: 35,),onTap: () {
            currentpage=0;
            setState(() {
              
            });
          },),label: ''),
          BottomNavigationBarItem(icon: GestureDetector(child: Icon(Icons.shopping_bag,size: 35,),onTap: () {
            currentpage=1;
            setState(() {
              
            });
          },),label: '')

        ],
      ),
    );

  }
}