import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(Inscription());

//import 'main.dart';
class Inscription extends StatefulWidget {
   final routes=<String, WidgetBuilder>{
  Inscription.tag: (context)=>Inscription(),
  //MyApp.tag: (context)=>MyApp()
};
  static String tag = 'InscriptionState';
  @override
  _InscriptionState createState() => _InscriptionState();
}


class _InscriptionState extends State<Inscription> {
  
  @override
  Widget build(BuildContext context) {
     

    /*final logo= Hero(
      tag: 'hero',
      child:CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.8,
        child: Image.asset('image/logo.jpg'),

      ) ,
      );*/
    
    final email= TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Nom complet',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )

      ),
    );

    final password= TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Pseudonyme',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )

      ),
    );

      final genre= TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )

      ),
    );

    final motdepass= TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'mot de pass',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )

      ),
    );

    final confirm= TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'confirmer mot de pass',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )

      ),
    );


    final loginButton=Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.greenAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){

          },
          color: Colors.green,
          child: Text('Log In', style: TextStyle(color:Colors.white)),
          ),
      ),
    );
 
 


    







    return Scaffold(

      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Bunia E-Comm App'),
        // actions: <Widget>[
        //   new IconButton(icon: Icon(Icons.search, color: Colors.white,),  onPressed:(){}),
        //   new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,),  onPressed:(){
        //     Navigator.of(context).pushNamed(Inscription.tag);
        //   }),
          


        // ],
       
  
        
      ),

      // drawer: new Drawer(

      //   child: new ListView(
      //     children: <Widget>[
      //       //header
      //     new UserAccountsDrawerHeader(accountName: Text('Joe'), 
      //     accountEmail: Text('surviejoe@gmail.com'),
      //   currentAccountPicture: GestureDetector(
      //     child: new CircleAvatar(
      //       backgroundColor: Colors.white,
      //       child: Icon(Icons.person, color: Colors.white,),
      //     ),

      //     ) ,
      //   decoration: new BoxDecoration(
      //     color: Colors.blueGrey
      //   ),

      //     ),
          
      //     //body
      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('Home Page'),
      //       leading: Icon(Icons.home,color: Colors.red,),
      //     ),
      //   ),

      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('My Accont'),
      //       leading: Icon(Icons.person , color: Colors.blue ,),
      //     ),
      //   ),

      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('My Orders'),
      //       leading: Icon(Icons.shopping_basket , color: Colors.blue ,),
      //     ),
      //   ),

      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('Categoris'),
      //       leading: Icon(Icons.dashboard , color: Colors.blue ,),
      //     ),
      //   ),

      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('Favoris'),
      //       leading: Icon(Icons.favorite , color: Colors.blue ,),
      //     ),
      //   ),

      //   InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('Settings'),
      //       leading: Icon(Icons.settings, color: Colors.blue ,),
      //     ),
      //   ),

      //    InkWell(
      //     onTap: (){},
      //     child: ListTile(
      //       title: Text('About'),
      //       leading: Icon(Icons.help, color: Colors.green,), 
      //     ),
      //   ),


      //     ],
      //   ),
      // ), 

       

      
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          children: <Widget>[
    
                        
            /*logo,
            SizedBox(height: 48.8,),*/
            
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 8.0),
             genre,
            SizedBox(height: 8.0),
            motdepass,
            SizedBox(height: 8.0),
            confirm,
            SizedBox(height: 24.0,),
            loginButton,

          ],
        ),
      
      ),
      
    );
  }
}