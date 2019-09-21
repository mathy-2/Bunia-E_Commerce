class GestionClient{
  String codeprod,nomprod,detailprod,origprod;
  int prixprod,qteprod;
  
GestionClient({this.codeprod, this.nomprod,this.detailprod, this.origprod,this.prixprod,this.qteprod});
static List<GestionClient> getUsers()
{
  return <GestionClient>
  [
    GestionClient(codeprod:"MT01",nomprod: "Montre",detailprod:"La montre est originale est elle a des fonctionnalites exceptionnelles",origprod:"Chine", prixprod:90,qteprod: 12),
    GestionClient(codeprod:"TL01",nomprod: "Television",detailprod:"La montre est originale est elle a des fonctionnalites exceptionnelles",origprod:"Chine", prixprod:90,qteprod: 12),
    GestionClient(codeprod:"MT01",nomprod: "Montre",detailprod:"La montre est originale est elle a des fonctionnalites exceptionnelles",origprod:"Chine", prixprod:90,qteprod: 12),
    GestionClient(codeprod:"MT01",nomprod: "Montre",detailprod:"La montre est originale est elle a des fonctionnalites exceptionnelles",origprod:"Chine", prixprod:90,qteprod: 12),
   
  ];
}
}