unit formuleDegat;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram,
    formuleDefense,
    formuleAttaque;


  var
    attaquePers, defensePers: Integer;
{Contient l'attaque et la défense du joueur.}


//Header
  function calculDegatAdv: Integer;
  function calculDegatCritiqueAdv: Integer;
  function calculDegatEchecCritiqueAdv: Integer;
  function calculDegatPers: Integer;
  function calculDegatCritiquePers: Integer;
  function calculDegatEchecCritiquePers: Integer;


implementation
function calculDegatAdv;
  begin
    pouvArmeAdv := lireIntegerRam(65);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defensePers := calculDefensePers;
    aleatoire(217,38);
    efficaciteAdv :=  lireIntegerRam(53);
    calculDegatAdv := ((((((nivAdv*40 div 100)*attaqueAdv*pouvArmeAdv div 50 div defensePers) +2) *lireIntegerRam(0) div 255)) * (efficaciteAdv*2) div 2);
  end;


function calculDegatCritiqueAdv;
  begin
    pouvArmeAdv := lireIntegerRam(65);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defensePers := calculDefensePers;
    aleatoire(217,38);
    efficaciteAdv :=  lireIntegerRam(53);
    calculDegatCritiqueAdv := ((((((nivAdv*40*2 div 100)*attaqueAdv*pouvArmeAdv div 50 div defensePers) +2) *lireIntegerRam(0) div 255)) * (efficaciteAdv*2) div 2);
  end;


function calculDegatEchecCritiqueAdv;
  begin
    pouvArmeAdv := lireIntegerRam(65);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    calculDegatEchecCritiqueAdv := ((((nivAdv*40 div 100)*attaqueAdv*pouvArmeAdv div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255);
  end;


function calculDegatPers;
  begin
    pouvArmePers := lireIntegerRam(66);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    efficacitePers :=  lireIntegerRam(64);
    calculDegatPers := ((((((nivCombat*40 div 100)*attaquePers*pouvArmePers div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255)) * (efficacitePers*2) div 2);
  end;


function calculDegatCritiquePers;
  begin
    pouvArmePers := lireIntegerRam(66);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    efficacitePers :=  lireIntegerRam(64);
    calculDegatCritiquePers := ((((((nivCombat*40*2 div 100)*attaquePers*pouvArmePers div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255)) * (efficacitePers*2) div 2);
  end;


function calculDegatEchecCritiquePers;
  begin
    pouvArmePers := lireIntegerRam(66);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defensePers := calculDefensePers;
    aleatoire(217,38);
    calculDegatEchecCritiquePers := ((((nivCombat*40 div 100)*attaquePers*pouvArmePers div 50 div defensePers) +2) *lireIntegerRam(0) div 255);
  end;
end.

