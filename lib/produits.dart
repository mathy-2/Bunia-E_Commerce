import 'package:flutter/material.dart';

class Produits extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Center(
        child:new Column(
          children: <Widget>
          [
              new Padding(padding: new EdgeInsets.all(10.0),),
              new Text("LISTE DES PRODUITS ",style: new TextStyle(fontSize: 20.0),),
              new Padding(padding: new EdgeInsets.all(20.0),),
          ],
),
),
);
  }
}