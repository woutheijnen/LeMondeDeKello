unit formuleDegatSort;

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
  function calculDegatSortAdv: Integer;
  function calculDegatSortCritiqueAdv: Integer;
  function calculDegatSortEchecCritiqueAdv: Integer;
  function calculDegatSortPers: Integer;
  function calculDegatSortCritiquePers: Integer;
  function calculDegatSortEchecCritiquePers: Integer;


implementation
function calculDegatSortAdv;
  begin
    pouvSortAdv := lireIntegerRam(54);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defensePers := calculDefensePers;
    aleatoire(217,38);
    efficaciteAdv :=  lireIntegerRam(53);
    calculDegatSortAdv := ((((((nivAdv*40 div 100)*attaqueAdv*pouvSortAdv div 50 div defensePers) +2) *lireIntegerRam(0) div 255)) * (efficaciteAdv*2) div 2);
  end;


function calculDegatSortCritiqueAdv;
  begin
    pouvSortAdv := lireIntegerRam(54);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defensePers := calculDefensePers;
    aleatoire(217,38);
    efficaciteAdv :=  lireIntegerRam(53);
    calculDegatSortCritiqueAdv := ((((((nivAdv*40*2 div 100)*attaqueAdv*pouvSortAdv div 50 div defensePers) +2) *lireIntegerRam(0) div 255)) * (efficaciteAdv*2) div 2);
  end;


function calculDegatSortEchecCritiqueAdv;
  begin
    pouvSortAdv := lireIntegerRam(54);
    nivAdv := lireIntegerRam(48);
    attaqueAdv := lireIntegerRam(43);
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    calculDegatSortEchecCritiqueAdv := ((((nivAdv*40 div 100)*attaqueAdv*pouvSortAdv div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255);
  end;


function calculDegatSortPers;
  begin
    pouvSortPers := lireIntegerRam(63);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    efficacitePers :=  lireIntegerRam(64);
    calculDegatSortPers := ((((((nivCombat*40 div 100)*attaquePers*pouvSortPers div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255)) * (efficacitePers*2) div 2);
  end;


function calculDegatSortCritiquePers;
  begin
    pouvSortPers := lireIntegerRam(63);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defenseAdv := lireIntegerRam(44);
    aleatoire(217,38);
    efficacitePers :=  lireIntegerRam(64);
    calculDegatSortCritiquePers := ((((((nivCombat*40*2 div 100)*attaquePers*pouvSortPers div 50 div defenseAdv) +2) *lireIntegerRam(0) div 255)) * (efficacitePers*2) div 2);
  end;


function calculDegatSortEchecCritiquePers;
  begin
    pouvSortPers := lireIntegerRam(63);
    nivCombat := lireIntegerRam(1);
    attaquePers := calculAttaquePers;
    defensePers := calculDefensePers;
    aleatoire(217,38);
    calculDegatSortEchecCritiquePers := ((((nivCombat*40 div 100)*attaquePers*pouvSortPers div 50 div defensePers) +2) *lireIntegerRam(0) div 255);
  end;
end.

