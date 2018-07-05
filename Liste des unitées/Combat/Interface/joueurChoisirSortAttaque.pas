unit joueurChoisirSortAttaque;

interface
  uses
    Sysutils,
    ram,
    actualisationEcranCombat,
    attaqueSortPers;


//Header
  procedure choisirSortsCombat;


implementation
procedure choisirSortsCombat;
    begin
      text1 := '  Vous choisisez quoi comme sort?';
      text2 := '    Appuyez sur 1, 2, 3, 4 pour sélectionner votre sort';
      text3 := '    ou sur une autre touche pour revenir.';
      ecrireStringRam(17, text2);
      ecrireStringRam(18, text3);
      ecrireStringRam(19, text4);
      choisirSort := 1;
      ecrireIntegerRam(67, choisirSort);
      sort1 := lireStringRam(5);
      sort2 := lireStringRam(6);
      sort3 := lireStringRam(7);
      sort4 := lireStringRam(8);
      actuEcranCombat;

      choix := lireStringRam(0);
      if (choix = '1') and (sort1 <> '') then sortPers := sort1;
      if (choix = '2') and (sort2 <> '') then sortPers := sort2;
      if (choix = '3') and (sort3 <> '') then sortPers := sort3;
      if (choix = '4') and (sort4 <> '') then sortPers := sort4;

      ecrireStringRam(25, sortPers);

      if (((choix = '1') and (sort1 <> '')) or ((choix = '2') and (sort2 <> ''))
        or ((choix = '3') and (sort3 <> '')) or ((choix = '4') and (sort4 <> '')))
          then persAttaqueSort;
    end;
end.
