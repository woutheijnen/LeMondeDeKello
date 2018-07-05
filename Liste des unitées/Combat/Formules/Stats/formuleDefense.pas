unit formuleDefense;

interface
  uses
    SysUtils,
    genererNombreAleatoire,
    ram;


  var
    viAdvDef: Integer;
{Contient la valeur individuelle de defense de l'adversaire.}
    valClasseDefense: Integer;
{Contient la valeur de base de defense dependent de la classe du joueur.}


//Header
  function calculDefensePers: Integer;
  procedure calculDefenseAdv;


implementation
function calculDefensePers: Integer;
  begin
    viDefense := lireIntegerRam(18);
    valClasseDefense := lireIntegerRam(11);
    nivCombat := lireIntegerRam(1);
    veDefense := lireIntegerRam(22);
    calculDefensePers := (((viDefense+valClasseDefense)*nivCombat) div 50)+5+(veDefense div 4);
  end;


procedure calculDefenseAdv;
  begin
    aleatoire(0,32);
    viAdvDef := lireIntegerRam(0);
    valAdvDef := lireIntegerRam(38);
    nivAdv := lireIntegerRam(48);
    valDiff := lireIntegerRam(34);
    defenseAdv := (((((viAdvDef+valAdvDef)*nivAdv) div 50)*(valDiff*10))div 80) + 5;
    ecrireIntegerRam(44, defenseAdv);
  end;
end.

