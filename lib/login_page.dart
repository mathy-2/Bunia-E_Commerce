import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:myandroid/inscription.dart';
import 'package:shopapp_tut/inscription.dart';
//import 'main.dart';

class Loginpage extends StatefulWidget {
  final routes=<String, WidgetBuilder>{
  Loginpage.tag: (context)=>Loginpage(),
  //MyApp.tag: (context)=>MyApp()
};
  static String tag = 'lodin_page';
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
 

    final logo= Hero(
      tag: 'hero',
      child:CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.8,
        child: Image.asset('images/logo.jpg'),

      ) ,);

    final email= TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Pseudonyme',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )

      ),
    );

    final password= TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        )

      ),
    );


    final loginButton=Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 1.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: (){

          },
          color: Colors.green ,
          child: Text('Log In', style: TextStyle(color:Colors.white)),
          ),
      ),
    );
  final forgotLabel=FlatButton(
    
    child: Text('Forgot password ?', style: TextStyle(color:Colors.black54)  ,),
    onPressed: (){},
    );
  final nvCompte=FlatButton(
    color: Colors.green,    
    child: Text('Sign Up ?', style: TextStyle(color:Colors.white)  ,),
    
    onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>Inscription())
        );
    
    },
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
      //       leading: Icon(Icons.shopping_basket , color: Colors.green[900] ,),
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
            logo,
            SizedBox(height: 48.8,),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            forgotLabel,
            nvCompte,


          ],
        ),
      
      ),
      
    );
  }
}