import 'package:flutter/material.dart';
import './product info.dart';
class individualproductpage extends StatefulWidget {
  int index1;
  individualproductpage({super.key,required this.index1});
  

  @override
  State<individualproductpage> createState() => _individualproductpageState();
}

class _individualproductpageState extends State<individualproductpage> {
  int? tappedchip=0;
  bool ispressed1=false;
  bool ispressed2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title:Text(product_infos[widget.index1]['Name'].toString()),
        centerTitle: true, 
        backgroundColor: const Color.fromARGB(255, 236, 226, 193),
        elevation: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        ),
      
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage(product_infos[widget.index1]['image'].toString())),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Column(
                children: [
                  const Text('Sizes Available'),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ((product_infos[widget.index1]['Size'])as List).length,
                      itemBuilder: (context, index) {
                      
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              tappedchip=index;
                              
                              setState(() {
                                
                              });
                            },
                            child: Chip(
                              label: Text(((product_infos[widget.index1]['Size'])as List)[index]),
                              backgroundColor: tappedchip==index?Colors.amber:const Color.fromARGB(255, 210, 202, 202),
                              shape:const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromARGB(0, 0, 0, 0)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                                
                              ),
                              
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: const WidgetStatePropertyAll(Colors.amber),
                              elevation: WidgetStatePropertyAll(ispressed1==true?5:0)
                              

                            ),
                            child:const  Text("Add to Cart"),
                            onPressed:() {
                              ispressed1=!ispressed1;
                              setState(() {
                                
                              });
                              
                            },
                          ),
                        ),
                      ),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: ElevatedButton(
                            
                            style: ButtonStyle(
                              backgroundColor: const WidgetStatePropertyAll(Colors.amber),
                              elevation: WidgetStatePropertyAll(ispressed2==true?0:5)

                            ),
                            child: const Text("Buy Now"),
                            onPressed:() {
                              ispressed2=!ispressed2;
                              setState(() {
                                
                              });
                            },
                          ),
                         ),
                       )
                    ],
                  )

                ],
              ),
            ),
          
        ],
      ),
    );
  }
}