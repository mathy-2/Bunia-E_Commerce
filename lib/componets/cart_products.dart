import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart =  [
    {
      "Name": "Blazer",
      "Picture": "images/products/blazer11.jpeg",
      "Price": 85,
      "Size":"M",
      "Color": "Marron",
      "Quantity": 1,
    },

     {
      "Name": "Kuberents",
      "Picture": "images/products/kubernets.jpg",
      "Price": 120,
      "Size":"M",
      "Color": "Chocolate",
      "Quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return new Single_cart_products(
          cart_prod_name: Products_on_the_cart[index]
          ['Name'],
          cart_prod_color: Products_on_the_cart[index]
          ['Color'],
          cart_prod_qty: Products_on_the_cart[index]
          ['Quantity'],
           cart_prod_size: Products_on_the_cart[index]
          ['Size'],
          cart_prod_price: Products_on_the_cart[index]
          ['Price'],
          cart_prod_pricture: Products_on_the_cart[index]
          ['Picture'],

        );
      });
  }
}

class Single_cart_products extends StatelessWidget {
   final cart_prod_name;
   final cart_prod_pricture;
   final cart_prod_price;
   final cart_prod_size;
   final cart_prod_color;
   final cart_prod_qty;
  Single_cart_products({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_pricture,
    this.cart_prod_qty,
    this.cart_prod_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading:new Image.asset(cart_prod_pricture, 
        width: 100.0,height: 100.0,),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(0.0),
                 child: new Text('Size:'),
               ),
                Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_size),
               ),
               new Padding(padding: const 
               EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
               child: new Text('Color:'),),
                Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text(cart_prod_color),
               ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("$cart_prod_price \$"),
            )
          ],
        ) ,
      )
    );
  }
}













