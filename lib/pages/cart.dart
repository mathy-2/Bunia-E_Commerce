import 'package:flutter/material.dart';

import 'package:shopapp_tut/componets/cart_products.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

       body: new Cart_products(),

      bottomNavigationBar: new Container(
        color:Colors.white,
        child: Row(children: <Widget>[
          Expanded(child: ListTile(
            title: new Text('Total:',style: 
            TextStyle (color: Colors.black, fontSize: 20)),
            subtitle: new Text('205\$', style: 
            TextStyle(color: Colors.black ,
            fontWeight: FontWeight.bold, fontSize: 20),),
          )),
          Expanded(
            child: new MaterialButton(onPressed: (){},
            child: new Text('Check Out', style: 
            TextStyle(color: Colors.white, fontSize: 18),),
            color: Colors.green,),
          )
        ],),
      ),
    );
    
  }
}