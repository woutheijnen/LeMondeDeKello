unit formuleAttaque;

interface
  uses
    SysUtils,
    genererNombreAleatoire,
    ram;


  var
    viAdvAtt: Integer;
{Contient la valeur individuelle d'attaque de l'adversaire.}
    valClasseAttaque: Integer;
{Contient la valeur de base d'attaque qui depend de la classe du joueur.}


//Header
  function calculAttaquePers: Integer;
  procedure calculAttaqueAdv;


implementation
function calculAttaquePers: Integer;
  begin
    viAttaque := lireIntegerRam(17);
    valClasseAttaque := lireIntegerRam(10);
    nivCombat := lireIntegerRam(1);
    veAttaque := lireIntegerRam(21);
    calculAttaquePers := (((viAttaque+valClasseAttaque)*nivCombat) div 50)+5+(veAttaque div 4);
  end;


procedure calculAttaqueAdv;
  begin
    aleatoire(0,32);
    viAdvAtt := lireIntegerRam(0);
    valAdvAtt := lireIntegerRam(37);
    nivAdv := lireIntegerRam(48);
    valDiff := lireIntegerRam(34);
    attaqueAdv := (((((viAdvAtt+valAdvAtt)*nivAdv) div 50)*(valDiff*10))div 80) + 5;
    ecrireIntegerRam(43, attaqueAdv);
  end;
end.
