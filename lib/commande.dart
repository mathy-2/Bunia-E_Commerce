import 'package:flutter/material.dart';
import 'list_commandes.dart';

class Commandes extends StatefulWidget{
 Commandes():super();
 final String title="Tableaux12"; 
@override
DataTableDemoState createState()=>DataTableDemoState();
}

////////////////////////////////////////////////////////////////
class  DataTableDemoState extends State<Commandes> 
{
List <User> user;
List <User> selectedUser;
bool sort;
@override
void initState()
{
  sort=false;
  selectedUser=[];
  user=User.getUsers();
super.initState();
}
onSortColum(int columnIndex, bool ascending)
{
  if (columnIndex == 0){
    if(ascending)
    {
      user.sort((a, b)=>a.article.compareTo(b.article));
    }else
    {
      user.sort((a, b)=>b.article.compareTo(a.article));
    }
  }

}
onSelectedRow(bool selected,User user) async
{
setState(()
{
if(selected)
  {
selectedUser.add(user);
  }else
  {
selectedUser.remove(user);
  }
});
  
}
deleteSelected() async
{
  setState(() {
    if(selectedUser.isNotEmpty)
{
  List<User> temp=[];
  temp.addAll(selectedUser);
  for(User users in temp)
  {
    user.remove(users);
    selectedUser.remove(user);
  } 
}
}
);

}
SingleChildScrollView dataBody(){
return SingleChildScrollView(
  scrollDirection:Axis.vertical,
  child: 
  DataTable(
  sortAscending: sort,
  sortColumnIndex: 0,
  columns:
  [
    //////////////////////////////////////////////////////////
    DataColumn(
      label: Text("Client",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: false,
      tooltip: "Identite du client",
      onSort: (columnIndex, ascending){
      setState((){
            sort=!sort;
           
      });
       onSortColum(columnIndex,ascending);
      }),
      //////////////////////////////////////////////////////////
     DataColumn(
      label: Text("Produits",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "detail produit",
    ),
      /////////////////////////////////////////////////////////////
    DataColumn(
      label: Text("Quantite",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "Quantite achete",
    ),
    ////////////////////////////////////////////////////////////////
    DataColumn(
      label: Text("Prix",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "Prix Unitaire",
    ),
       DataColumn(
      label: Text("PrixTot",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "Total",
    ),
    ///////////////////////////////////////////////////////////////////////
  ],
  rows: user
    .map
    (
      (user)=>DataRow(
        selected:selectedUser.contains(user),
        onSelectChanged:(b)
        {
          print("OnSelect");
          onSelectedRow(b, user);
        } ,
        cells:[
      DataCell(
      Text(user.nomclient),
      onTap: ()
      {
        print("Selected ${user.nomclient}");
      }
      ),
      DataCell(
        Text(user.article),
      ),
       DataCell(
        Text(user.quantite.toStringAsFixed(0),textAlign: TextAlign.center),
      ),
      DataCell(
        Text(user.prix.toStringAsFixed(0),textAlign: TextAlign.center),
      ),
       DataCell(
        Text(user.prixtot.toStringAsFixed(0),textAlign: TextAlign.center,),
      ),
      ]),
    )
    .toList(),
  ),
);

}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
  body: Column(
            
            mainAxisSize:MainAxisSize.min,
            mainAxisAlignment:MainAxisAlignment.center,
            verticalDirection:VerticalDirection.down,
            children: <Widget>[

                             new Padding(padding: new EdgeInsets.all(5.0),),
              new Text("LISTE DES COMMANDES ",style: new TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
              new Padding(padding: new EdgeInsets.all(5.0),),
                Expanded(
                  child:
              Center(child: dataBody(),
              ),),
             
              Row(
                  mainAxisSize:MainAxisSize.min,
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>
            [
              
             Padding(
               padding: EdgeInsets.all(20.0),
               child: OutlineButton(
                 child: Text('SELECTIONNES ${selectedUser.length}'),
                onPressed: (){

                },
                 ),
                 ),
                   Padding(
               padding: EdgeInsets.all(20.0),
               child: OutlineButton(
                 child: Text('SUPPRIMES'),
                onPressed:selectedUser.isEmpty 
                              ? null
                              :(){
                    deleteSelected();
                },
                 ),
                 ),   
            ]
              )
            ],
          )

);
  }
}

  

