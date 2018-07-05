unit adversaireAttaqueHybride;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    formuleDegat,
    attaqueSortAdv,
    ram;


  var
    precisionAdv: Integer;
{Contiens la précision de l'adversaire, qui déduit que si l'attaque sera un coupe critique, un echec critique,
un rattage ou un attaque normal.}
    chanceStatut: Integer;
{Chiffre aléatoire, permet que l'attaque applique un statut sur le joueur.}
    nbSortAdv: Integer;
{Contiens combien de sorts l'adversaire connait.}
    choixSortAdv: Integer;
{Contiens un numéro au hasard qui fait le choix du sort de l'adversaire}


//Header
  procedure advAttHybride;


implementation
procedure advAttHybride;
  begin
    aleatoire(0,201);
    precisionAdv := lireIntegerRam(0);
    efficaciteAdv := lireIntegerRam(53);
    statutPers := lireStringRam(15);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
      if (chanceStatut = 1) and (statutPers = '') and (precisionAdv > 0) and (precisionAdv <= 90) then
        begin
          text4 := 'Vous commencez à saigner gravement.';
          statutPers := 'Saigne';
          ecrireStringRam(15, statutPers);
          ecrireStringRam(19, text4);
        end;
      if (precisionAdv = 0) then
        begin
          degatAdv2 := calculDegatEchecCritiqueAdv;
          degatPers2 := 0;
          text3:= 'Votre adversaire essaye de vous attaquer mais se coupe lui-même.';
          ecrireStringRam(18, text3);
          ecrireIntegerRam(59, degatPers2);
          ecrireIntegerRam(60, degatAdv2);
        end;
      if (precisionAdv = 1) then
        begin
          degatAdv2 := 0;
          degatPers2 := calculDegatCritiqueAdv;
          if efficaciteAdv = 1 then text3:= 'Votre adversaire fait coupe critique sur vous. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire fait coupe critique sur vous.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire fait coupe critique. C´est très efficace.';
          ecrireStringRam(18, text3);
          ecrireIntegerRam(59, degatPers2);
          ecrireIntegerRam(60, degatAdv2);
        end;
      if (precisionAdv > 1) and (precisionAdv <=90) then
        begin
          degatAdv2 := 0;
          degatPers2 := calculDegatAdv;
          if efficaciteAdv = 1 then text3:= 'Votre adversaire vous tranche. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire vous tranche.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire vous tranche. C´est très efficace.';
          ecrireStringRam(18, text3);
          ecrireIntegerRam(59, degatPers2);
          ecrireIntegerRam(60, degatAdv2);
        end;
      if (precisionAdv > 90) and (precisionAdv <=99) then
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text3 := 'Votre adversaire se rate.';
            ecrireStringRam(18, text3);
            ecrireIntegerRam(59, degatPers2);
            ecrireIntegerRam(60, degatAdv2);
          end else
            begin
                  ecrireIntegerRam(53, 2);
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
  end;
end.

