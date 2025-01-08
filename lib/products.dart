import 'package:flutter/material.dart';
import './product info.dart';
import './individual_sizepage.dart';

class eachproductcard extends StatelessWidget {
  const eachproductcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1/1.3
        ),
        itemCount: product_infos.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return individualproductpage(index1: index);
                  },

                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 222, 136),
                  boxShadow: const [
                    BoxShadow(
                      color:  Color.fromARGB(93, 0, 0, 0),
                      offset: Offset(0, 0),
                      blurRadius: 1,
                      spreadRadius: 1
                    ),
                  
                  ],
                  borderRadius: BorderRadius.circular(20)
                ),
              
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(product_infos[index]['Name'].toString(),style:const  TextStyle(fontSize: 20,height: 1.1),textAlign: TextAlign.center,),
                      const  SizedBox(height: 5,),
                      Text('USD ${product_infos[index]['Price'].toString()}'),
                      
                      Expanded(child: Image(image: AssetImage(product_infos[index]['image'].toString())))
                              
                      
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}