 import 'package:flutter/material.dart';
 import 'package:shopapp_tut/main.dart';
 import 'package:shopapp_tut/pages/cart.dart';


 class ProductsDetails extends StatefulWidget {
   @override
   final product_detail_name;
   final product_detail_new_price;
   final product_detail_old_price;
   final product_detail_picture;

    ProductsDetails({
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture
    });

   _ProductsDetailsState createState() => _ProductsDetailsState();
 }
 
 class _ProductsDetailsState extends State<ProductsDetails> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => new HomePage()));},
          child: Text('Bunia E-comm App')),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                new Cart()));
              }),
              new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {})  
        ],
        
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                 child: new Image.asset(
              widget.product_detail_picture),
            ),
            footer : new Container(
              color: Colors.white,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, 
                fontSize: 16.0, color: Colors.black),
                ),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("${widget.product_detail_old_price}\$",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.lineThrough)) 
                      
                      ),
                    Expanded(
                      child: new Text("${widget.product_detail_new_price}\$", style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 16.0, color: Colors.black))
                      ,)
                  ],)
              ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text('Size'),
                        content: new Text('Choose The Size'),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context); 
                          },
                          child: new Text('close'),)
                        ],
                      );
                  });
                }, 
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text('Size'),
                    ), 

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down, color:Colors.green,)
                    ),
                  ],),
                ),
              ),

              Expanded(
                child: MaterialButton(
                 onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text('Colors'),
                        content: new Text('Choose The Color'),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context); 
                          },
                          child: new Text('close'),)
                        ],
                      );
                  });
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text('Color'),
                    ), 

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down, color:Colors.green[900],)
                    ),
                  ],),
                ),
              ),

              Expanded(
                child: MaterialButton(
               onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text('Quantity'),
                        content: new Text('Choose The Quantity'),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context); 
                          },
                          child: new Text('close'),)
                        ],
                      );
                  });
                },
                color: Colors.white,
                textColor: Colors.black,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text('Qty'),
                    ), 

                    Expanded(
                      child: new Icon(Icons.arrow_drop_down, color: Colors.green,),
                    ),
                  ],),
                ),
              )
            ],
             ),

              Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                elevation: 1.3,
                child: new Text('Buy Now')
                ),
              ),  

             new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.green, onPressed: () {},),
            new IconButton(icon: Icon(Icons.favorite_border), color: Colors.green, onPressed: () {},)

            ],
             ),
            Divider(),
             new ListTile(
               title: new Text('Product Details', style: TextStyle(fontWeight: FontWeight.bold,) ),
               subtitle: new Text('Lorem ipsum dolor sit amet consectetur adipisicing elit.Maiores eos provident repellat labore ducimus excepturi error, animi molestias, voluptatem beatae, enim velit sint architecto placeat quam molestiae? Placeat, non quia! Lorem ipsum dolor sit amet consectetur adipisicing elit', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
             ),
               Divider(),
                  new Row(
                 children: <Widget>[
                   Padding(padding: const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                   child: new Text('Product Condition : NEW', style: TextStyle(fontWeight: FontWeight.bold),),)
                 ],
                 )
        ],
      )
     );
   }
 }