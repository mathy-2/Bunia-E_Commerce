

  import 'package:flutter/material.dart';

class Produits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:new Scaffold(
        
        body:
        new ListView.builder(
          
          itemBuilder: (BuildContext context, int index)
          {
              return new StuffInTiles(listOfTiles[index]);
          },
          itemCount: listOfTiles.length,
        ),
      ),
    );
  }
}

class  StuffInTiles extends StatelessWidget {
  final MyTile myTile;
  StuffInTiles(this.myTile);
  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }
      Widget _buildTiles(MyTile t)
      {
        if(t.children.isEmpty)
        {
          return new ListTile(title:new Text(t.title));
        }
        return new ExpansionTile(
          key: new PageStorageKey<MyTile>(t),
          title:new Text(t.title),
          children: t.children.map(_buildTiles).toList(),
        );
      }
  }
class MyTile{
  String title;
  List<MyTile>children;
  MyTile(this.title,[this.children=const <MyTile>[]]);
}
   
List<MyTile> listOfTiles=<MyTile>[
          
new MyTile
(
  'MONTRES',
  <MyTile>
  [
    new MyTile
    (
      '   LUXE',
     <MyTile>
     [
       new MyTile('      RADIO   --------->201 USD'),
       new MyTile('      Samsungu--------->10 USD'),
      ] ,
    ),
     new MyTile
     (
      '   SEMI-LUXE',
     <MyTile>
     [
       new MyTile('     Xaler------------> 10 USD'),
       new MyTile('     Orlando----------> 20 USD'),
     ] ,  
     ),
  ],
),
new MyTile(
  'CASQUES',
  <MyTile>
  [
       new MyTile('     Mark List ---------->25 USD'),
       new MyTile('     Stereo ------------->28 USD'),
  ] ,
  ),
new MyTile
(
  'ORDINATEURS',
  <MyTile>
  [
       new MyTile('     Lenovo --------------->700 USD'),
       new MyTile('     Samsung -------------->500 USD'),
       new MyTile('     Acer ----------------->400 USD'),
  ] ,

),
new MyTile('CHEMISES'),
new MyTile('APPAREIL PHOTOGRAPHIQUE'),
new MyTile
(
'TELEPHONES',
    <MyTile>
     [
       new MyTile('     Techno C9------>100 USD'),
       new MyTile('     Samsungu ------>150 USD'),
       new MyTile('     Nokia 3500----->250 USD'),
     ] , 
  ),
  ];