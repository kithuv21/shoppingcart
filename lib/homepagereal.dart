import 'package:flutter/material.dart';
import './products.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> creaateState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {

  List filters=['All','LP','Allen Solly','US polo' ];
 int selectedindex=0;
  @override
  
  Widget build(BuildContext context) {
    return SafeArea(

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
        
      );
  }
}