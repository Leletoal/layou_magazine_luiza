import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:layout_magazine/going/going.dart';

import 'package:layout_magazine/list/list_of_items.dart';
import 'package:layout_magazine/models/items.dart';


class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}
 
  class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.jpg", scale: 2,),
        title: Text("Ofertas do Dia"),
        
        
    
        
        
        
      ),
      body: Column(
        children: [
          Image.asset("assets/linha.jpg"),
          Expanded(
            child:
      

          ListView.separated( 
          itemBuilder: builder,
          itemCount: 
          listOfItems.length,
          separatorBuilder: (_, index) {
           return Divider();
          
          },
          
          
          
          ),
          

          ),
        ]
       
          ),
      );

      
      
    
    
  }
  Widget builder (BuildContext _, int index)
 {
   Items _items = listOfItems.
   elementAt(index);
   return Padding(
     padding: const EdgeInsets.only(left: 10),
     child: ListTile(
       
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        

        children: [
          
          Image.asset(_items.photo,
          width: 40,
          height: 50,
          
          ),
          SizedBox(
            width: 14,
          ),
      
        
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              
              children: [
                Text(_items.item, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                Text(_items.description, style: TextStyle(fontSize: 10),),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(_items.price, style: TextStyle(fontSize: 12, color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
                
                Text(_items.part, style: TextStyle(fontSize: 10, color: Colors.blue[300]),),
               
             
               
              ],
            ),
          ),
        ],
      ),
      
      trailing: IconButton(icon: (_items.isFavorite)? Icon(FontAwesomeIcons.solidHeart, color: Colors.pink,):
      Icon(FontAwesomeIcons.heart, color: Colors.pink,),
       onPressed: () {
         setState(() {
           _items.isFavorite = !_items.isFavorite;
         });
          
       },
      ),
      
      
  
     ),
   );
   
  
 }

  
}