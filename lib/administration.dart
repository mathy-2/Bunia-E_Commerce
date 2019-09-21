import 'package:flutter/material.dart';

import 'gestion_client.dart' as GestClient;
import 'commande.dart' as Commandes;
import 'factures.dart' as Factures;
import 'gestion_produits.dart' as Produits;
// import 'package:shopapp_tut/pages/cart.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Administration extends StatefulWidget {
  @override
  AdminState createState() => AdminState();
  
}
class AdminState extends State<Administration> with SingleTickerProviderStateMixin{
  TabController onglet;
  @override
  void initState() {  
    onglet=new TabController(vsync: this,length: 4);
    super.initState();
  }
  @override
  void dispose() {
    onglet.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
         elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Bunia E-Com App'),
        // actions: <Widget>[
        //   new IconButton(
        //       icon: Icon(
        //         Icons.search,
        //         color: Colors.white,
        //       ),
        //       onPressed: (){} ),
        //   new IconButton(
        //       icon: Icon(
        //         Icons.shopping_cart,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {
        //         Navigator.push(context, 
        //         MaterialPageRoute(builder: (context) =>
        //         new Cart()));
        //       })
        // ],
          bottom: new TabBar(
          indicatorSize:TabBarIndicatorSize.label,
          indicatorWeight: 5.0,
          indicatorColor: Colors.orange,
          labelColor:Colors.white,
          isScrollable: true,controller: onglet,
          tabs: <Widget> 
          [
            new Tab(text: "Produits"),
            new Tab(text: "Clients"),
            new Tab(text: "Commandes"),
            new Tab(text: "Facture"),
          ]),),
          body: new TabBarView(
            controller:onglet, 
            children:<Widget>
            [
              new Produits.Produits(),
              new GestClient.GestClient(),
               new Commandes.Commandes(),
               new Factures.Factures(),
               
            ]
          ),
        );
  }
}