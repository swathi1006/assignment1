import 'dart:math';

import 'package:assignment1/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatelessWidget {

  var plant = [
    Data(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJFJ2qNnNmqUxhuMpZ2sj75dWpFIsQ9OxzFi0LALX4g&s",
    name: "Filodento \nAtom",
    water: "250 ml"),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3DKXugcHP9uajVc_S40Oq2g9WbFXybup2Wg&s",
      name: "Monstera \n Deliciosa",
      water: "500 ml"
    ),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlcEfk_lnRdEKi22npHeFhKhXl2EVlesdv1w&s",
      name: "Chlorophytum",
      water: "500 ml"
    ),
    Data(
      image: "https://www.beardsanddaisies.co.uk/cdn/shop/products/170-180_KENTIAPALM_1400x.jpg?v=1701776142",
      name: "kentiapalm",
      water: "250 ml"
    ),
    Data(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWqaTR77SW27VPr3L10LZH94d3QinQHijClQ&s",
      name: "Peperomia \n Obtusifolia",
      water: "250 ml"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Icon(
            Icons.settings_outlined,
          size: 40,
          color: Colors.black54,),
        ),
        actions: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: CircleAvatar(
              backgroundColor: Colors.blue.shade200,
              child: Icon(Icons.add,
              color: Colors.white,),
                       ),
           ),
        ],
        title: Text("  Water Today",
        style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:
      ListView.separated(
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 130,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)
                  ),
                 child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment : CrossAxisAlignment.center,
                   //  mainAxisSize : MainAxisSize.max,
                   children:[
                     Image.network(plant[index].image!),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text(plant[index].name!,
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                         Text(plant[index].water!),
                       ],
                     ),
                     const CircleAvatar(
                       backgroundColor: Colors.white,
                       child: Icon(Icons.water_drop_outlined,
                         color: Colors.tealAccent,),
                     ),
                   ]
                 ),
                ),
              );
            },
            separatorBuilder: (context,index) {
              if (((index+1) % 4 == 0) && (index != 0)){
                return const Text("Fri, February 2017",style: TextStyle(fontSize: 26,color:Colors.black87,fontWeight: FontWeight.bold),);
              } else {
                return Container();
              }

            },
            itemCount: plant.length),

    );
  }
}
