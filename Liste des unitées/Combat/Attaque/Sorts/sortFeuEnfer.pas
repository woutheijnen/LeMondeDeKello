unit sortFeuEnfer;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram,
    formuleDegatSort;

  var
    precision: Integer;
{Nombre al�atoire qui rend un attaque un echec critique, un coupe critique, un attaque normale,
un rattage mais peuvent aussi donner des statuts diff�rents selon les sorts.}
    chanceStatut: Integer;
{Valeur au hasard qui d�termine si un statut doit �tre appliqu� acause du sort.}


//Header
  procedure feuEnferAdv;
  procedure feuEnferPers;


implementation
procedure feuEnferAdv;
  begin
    aleatoire(0,101);
    precision := lireIntegerRam(0);
    pouvSortAdv := 600;
    ecrireIntegerRam(54, pouvSortAdv);
    statutPers := lireStringRam(15);
    efficaciteAdv := lireIntegerRam(53);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
      if (chanceStatut = 1) and (statutPers = '') then
        begin
          text4 := 'Le feu vous brule.';
          statutPers := 'Brul�';
          ecrireStringRam(15, statutPers);
        end;
      if (precision = 0) then
        begin
          text3 := 'Pendant que votre adversaire lance feu d�enfer, Il se loupe.';
          degatPers2 := 0;
          degatAdv2 := calculDegatSortEchecCritiqueAdv;
        end;
      if (precision = 1) then
        begin
          if efficaciteAdv = 1 then text3 := 'Votre adversaire fait coupe critique. Ce n�est pas tr�s effiace.';
          if efficaciteAdv = 2 then text3 := 'Votre adversaire fait coupe critique.';
          if efficaciteAdv = 4 then text3 := 'Votre adversaire fait coupe critique. C�est tr�s efficace.';
          degatPers2 := calculDegatSortCritiqueAdv;
          degatAdv2 := 0;
        end;
      if (precision > 1) and (precision <= 90) then
        begin
          if efficaciteAdv = 1 then text3 := 'Votre adversaire lance feu d�enfer. Ce n�est pas tr�s effiace.';
          if efficaciteAdv = 2 then text3 := 'Votre adversaire lance feu d�enfer.';
          if efficaciteAdv = 4 then text3 := 'Votre adversaire lance feu d�enfer. C�est tr�s efficace.';
          degatPers2 := calculDegatSortAdv;
          degatAdv2 := 0;
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text3 := 'Votre adversaire se rate.';
          end;
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    ecrireIntegerRam(59, degatPers2);
    ecrireIntegerRam(60, degatAdv2);
  end;


procedure feuEnferPers;
  begin
    aleatoire(0,101);
    precision := lireIntegerRam(0);
    pouvSortPers := 600;
    ecrireIntegerRam(63, pouvSortPers);
    statutAdv := lireStringRam(14);
    efficacitePers := lireIntegerRam(64);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
      if (chanceStatut = 1) and (statutAdv = '') then
        begin
          text2 := 'Le feu brule votre adversaire.';
          statutAdv := 'Brul�';
          ecrireStringRam(14, statutAdv);
        end;
      if (precision = 0) then
        begin
          text1 := 'Pendant que vous essayez de lancer feu d�enfer, vous vous loupez.';
          degatPers := calculDegatSortEchecCritiquePers;
          degatAdv := 0;
        end;
      if (precision = 1) then
        begin
          if efficacitePers = 1 then text1 := 'Vous faite coupe critique. Ce n�est pas tr�s efficace.';
          if efficacitePers = 2 then text1 := 'Vous faite coupe critique.';
          if efficacitePers = 4 then text1 := 'Vous faite coupe critique. C�est tr�s efficace.';
          degatPers := 0;
          degatAdv := calculDegatSortCritiquePers;
        end;
      if (precision > 1) and (precision <= 90) then
        begin
          if efficacitePers = 1 then text1 := 'Vous lancez feu d�enfer. Ce n�est pas tr�s efficace.';
          if efficacitePers = 2 then text1 := 'Vous lancez feu d�enfer.';
          if efficacitePers = 4 then text1 := 'Vous lancez feu d�enfer. C�est tr�s efficace.';
          degatPers := 0;
          degatAdv := calculDegatSortPers;
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text3 := 'Vous ratez votre attaque.';
          end;
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireIntegerRam(57, degatPers);
    ecrireIntegerRam(58, degatAdv);
  end;
end.
