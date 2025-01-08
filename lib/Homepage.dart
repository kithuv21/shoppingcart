import 'package:flutter/material.dart';
import './products.dart';

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
      body: SafeArea(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 5),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 50, 5),
                    child: Text('Products',style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),),
                  ),
                  Expanded(
                    child: TextField(
                    
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 158, 150, 150),
                        filled: true,
                        
                        hintText: 'Search',
                        hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                        
                        )
              
                      ),
                    ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          selectedindex=index;
                          setState(() {
                            
                          });
                      
                        },
                        child: Chip(label: Text(filters[index],style: const TextStyle(fontFamily: 'Montserrat',fontWeight: FontWeight.w600),),
                        backgroundColor: selectedindex==index ? Colors.amber:const Color.fromARGB(255, 214, 204, 173),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: const BorderSide(
                            color: Color.fromARGB(0, 0, 0, 0)

                          ),
                        )
                        ),
                      ),
                    );
                  }
                
                  ),
              ),
            ),
            const Expanded(child: eachproductcard())
          ],
        ),
        
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentpage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,size: 35,),label: '')

        ],
      ),
    );

  }
}