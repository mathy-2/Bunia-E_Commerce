class GestionClient{
  String nomclient,prenomclient, genre;
  int telephone;
  
GestionClient({this.nomclient, this.prenomclient,this.genre, this.telephone});
static List<GestionClient> getUsers()
{
  return <GestionClient>
  [
    GestionClient(nomclient: "Maki",prenomclient:"Serge",genre:"F", telephone:09955655512),
    GestionClient(nomclient: "Sivika",prenomclient:"Alphonse",genre:"M", telephone:0996765812),
    GestionClient(nomclient: "Mokili",prenomclient:"Francis",genre:"M", telephone:0992745512),
    GestionClient(nomclient: "Anyolitho",prenomclient:"Helen",genre: "F",telephone:0995669842),
  ];
}
}