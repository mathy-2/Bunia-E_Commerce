import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopapp_tut/pages/cart.dart';
//my own imports
import 'package:shopapp_tut/componets/horizontal_listview.dart';
import 'package:shopapp_tut/componets/products.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopapp_tut/login_page.dart';
import 'package:shopapp_tut/administration.dart';
final routes=<String, WidgetBuilder>{
  Loginpage.tag:(context)=>Loginpage(),

};
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: routes,
  
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 150.0,
    child:  new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/w31.jpg'),
        AssetImage('images/m11.jpg'),
        AssetImage('images/c11.jpg'),
        AssetImage('images/w41.jpg'),
      ],
      autoplay: true,
     animationCurve: Curves.fastOutSlowIn,
     animationDuration: Duration(milliseconds: 10),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Bunia E-Com App'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){} ),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
                accountName: Text('Bunia E-Com App'),
                accountEmail: Text('BuniaEComApp@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.green
            ),
            ),

//            body

          InkWell(
            onTap: (){
               Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                new HomePage()));
            },
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.green,),
            ),
          ),

            InkWell(
              
              child: ListTile(
                onTap: (){
                Navigator.of(context).pushNamed(Loginpage.tag);
              },
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.green,),
              ),
            ),

            // InkWell(
            //   onTap: (){},
            //   child: ListTile(
            //     title: Text('My Orders'),
            //     leading: Icon(Icons.shopping_basket, color: Colors.green,),
            //   ),
            // ),

            InkWell(
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                new Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.green,),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) =>
                new Administration()));
              },
              child: ListTile(
                title: Text('Administration'),
                leading: Icon(Icons.account_box, color: Colors.green,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.green,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories', style: TextStyle(color: Colors.green, fontSize: 17),),),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products',style: TextStyle(color: Colors.green, fontSize: 17),),),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
