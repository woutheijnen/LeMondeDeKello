unit formuleVitesse;

interface
  uses
    SysUtils,
    genererNombreAleatoire,
    ram;


  var
    viAdvVit: Integer;
{Contient la valeur individuelle de vitesse de l'adversaire.}
    valClasseVitesse: Integer;
{Contient la valeur de base de vitesse dependent de la classe du joueur.}


//Header
  function calculVitessePers: Integer;
  procedure calculvitesseAdv;


implementation
function calculVitessePers: Integer;
  begin
    viVitesse := lireIntegerRam(19);
    valClasseVitesse := lireIntegerRam(12);
    nivCombat := lireIntegerRam(1);
    veVitesse := lireIntegerRam(23);
    calculVitessePers := ((((viVitesse+valClasseVitesse)*nivCombat) div 50)+5+(veVitesse div 4));
  end;


procedure calculvitesseAdv;
  begin
    aleatoire(0,32);
    viAdvVit := lireIntegerRam(0);
    valAdvVit := lireIntegerRam(39);
    nivAdv := lireIntegerRam(48);
    valDiff := lireIntegerRam(34);
    vitesseAdv := (((((viAdvVit+valAdvVit)*nivAdv) div 50)*(valDiff*10))div 80) + 5;
    ecrireIntegerRam(45, vitesseAdv);
  end;
end.

