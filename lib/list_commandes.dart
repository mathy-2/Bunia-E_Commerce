class User{
  String article,nomclient;
  int quantite;
  int prix;
  int prixtot=0;
  
User({this.article, this.quantite, this.prix,this.nomclient,this.prixtot});
static List<User> getUsers()
{
  return <User>
  [
    User(nomclient:"Salomon",article: "Montre",quantite: 9,prix:10, prixtot:90),
    User(nomclient:"Alexi",article: "Ordinateur", quantite: 5, prix: 25,prixtot: 125),
     User(nomclient:"Bahati",article: "Radio",quantite: 10, prix: 20,prixtot: 200),
    User(nomclient:"Maki",article: "Television", quantite: 16, prix: 5,prixtot: 80),
     User(nomclient:"Zawadi",article: "Telephone",quantite: 10, prix: 5,prixtot: 50),
    User(nomclient:"Liandema",article: "Moto", quantite: 7, prix: 4,prixtot: 28),
    User(nomclient:"Ilunga",article: "Sac",quantite: 12, prix: 12,prixtot: 144),
    User(nomclient:"Tshilombo",article: "HDD", quantite: 8, prix: 8,prixtot: 64),
    User(nomclient:"Elongo",article: "Montre",quantite: 15, prix: 6,prixtot: 90),
    User(nomclient:"Saliboko",article: "Ordinateur", quantite: 2, prix: 5,prixtot: 10),
  ];
}
}