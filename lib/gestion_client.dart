import 'package:flutter/material.dart';
import 'data_clients.dart';

class GestClient extends StatefulWidget{
 GestClient():super();
 final String title="Tableaux12"; 
@override
DataTableDemoState createState()=>DataTableDemoState();
}

////////////////////////////////////////////////////////////////
class  DataTableDemoState extends State<GestClient> 
{
List <GestionClient> user1;
List <GestionClient> selectedUsers;
bool sort;
@override
void initState()
{
  sort=false;
  selectedUsers=[];
  user1=GestionClient.getUsers();
super.initState();
}
onSortColum(int columnIndex, bool ascending)
{
  if (columnIndex == 0){
    if(ascending)
    {
      user1.sort((a, b)=>a.nomclient.compareTo(b.nomclient));
    }else
    {
      user1.sort((a, b)=>b.nomclient.compareTo(a.nomclient));
    }
  }

}
onSelectedRow(bool selected,GestionClient user1) async
{
setState(()
{
if(selected)
  {
selectedUsers.add(user1);
  }else
  {
selectedUsers.remove(user1);
  }
});
  
}
deleteSelected() async
{
  setState(() {
    if(selectedUsers.isNotEmpty)
{
  List<GestionClient> temp=[];
  temp.addAll(selectedUsers);
 for(GestionClient users in temp)
  {
    user1.remove(users);
    selectedUsers.remove(user1);
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
      label: Text("Nomclient",style: new TextStyle(
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
      label: Text("Prenom",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "detail produit",
    ),
      /////////////////////////////////////////////////////////////
    DataColumn(
      label: Text("Genre",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "Quantite achete",
    ),
    ////////////////////////////////////////////////////////////////
    DataColumn(
      label: Text("Telephone",style: new TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
      numeric: true,
      tooltip: "Prix Unitaire",
    ),
       
    ///////////////////////////////////////////////////////////////////////
  ],
  rows: user1
    .map
    (
      (user1)=>DataRow(
        selected:selectedUsers.contains(user1),
        onSelectChanged:(b)
        {
          print("OnSelect");
          onSelectedRow(b, user1);
        } ,
        cells:[
      DataCell(
      Text(user1.nomclient),
      onTap: ()
      {
        print("Selected ${user1.nomclient}");
      }
      ),
      DataCell(
        Text(user1.prenomclient),
      ),
       DataCell(
        Text(user1.genre),//.toStringAsFixed(0),textAlign: TextAlign.center),
      ),
      
            DataCell(
        Text(user1.telephone.toStringAsFixed(0),textAlign: TextAlign.center,),//.toStringAsFixed(0),textAlign: TextAlign.center),
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
  body: 
  Column( 
            mainAxisSize:MainAxisSize.min,
            mainAxisAlignment:MainAxisAlignment.center,
            verticalDirection:VerticalDirection.down,
            children: <Widget>[
              new Padding(padding: new EdgeInsets.all(5.0),),
              Text("NOS CLIENTS ",style: new TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),),
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
               padding: EdgeInsets.all(8.0),
               child: OutlineButton(
                 child: Text('SELECTIONNES ${selectedUsers.length}'),
                onPressed: (){

                },
                 ),
                 ),
                   Padding(
               padding: EdgeInsets.all(12.0),
               child: OutlineButton(
                 child: Text('SUPPRIMES'),
                onPressed:selectedUsers.isEmpty 
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

  

