unit adversaireAttaqueMage;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    attaqueSortAdv,
    ram;


  var
    nbSortAdv: Integer;
{Contiens combien de sorts l'adversaire connait.}
    choixSortAdv: Integer;
{Contiens un numéro au hasard qui fait le choix du sort de l'adversaire}


//Header
  procedure advAttMage;


implementation
procedure advAttMage;
  begin
    efficaciteAdv := lireIntegerRam(53);
    sort1Adv := lireStringRam(21);
    sort2Adv := lireStringRam(22);
    sort3Adv := lireStringRam(23);
    sort4Adv := lireStringRam(24);
    nbSortAdv := 4;
      if (sort1Adv = '') then nbSortAdv := nbSortAdv - 1;
      if (sort2Adv = '') then nbSortAdv := nbSortAdv - 1;
      if (sort3Adv = '') then nbSortAdv := nbSortAdv - 1;
      if (sort4Adv = '') then nbSortAdv := nbSortAdv - 1;
    aleatoire(1,nbSortAdv);
    choixSortAdv := lireIntegerRam(0);
      if (choixSortAdv = 1) then sortAdv := sort1Adv;
      if (choixSortAdv = 2) then sortAdv := sort2Adv;
      if (choixSortAdv = 3) then sortAdv := sort3Adv;
      if (choixSortAdv = 4) then sortAdv := sort4Adv;
    ecrireStringRam(20, sortAdv);
    advAttaqueSort;
  end;
end.

