unit adversaireAttaqueRodeur;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    formuleDegat,
    ram;


  var
    precisionAdv: Integer;
{Contiens la précision de l'adversaire, qui déduit que si l'attaque sera un coupe critique, un echec critique,
un rattage ou un attaque normal.}
    chanceStatut: Integer;
{Chiffre aléatoire, permet que l'attaque applique un statut sur le joueur.}



//Header
  procedure advAttRodeur;


implementation
procedure advAttRodeur;
  begin
    aleatoire(0,101);
    precisionAdv := lireIntegerRam(0);
    efficaciteAdv := lireIntegerRam(53);
    statutPers := lireStringRam(15);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
      if (chanceStatut = 1) and (statutPers = '') and (precisionAdv > 0) and (precisionAdv <= 90) then
        begin
          text4 := 'Vous commencez a saigner gravement.';
          statutPers := 'Saigne';
          ecrireStringRam(15, statutPers);
        end;
      if (precisionAdv = 0) then
        begin
          degatAdv2 := calculDegatEchecCritiqueAdv;
          degatPers2 := 0;
          text3:= 'Votre adversaire essaye de vous attaquer mais se tire dans son genou.';
        end;
      if (precisionAdv = 1) then
        begin
          degatAdv2 := 0;
          degatPers2 := calculDegatCritiqueAdv;
          if efficaciteAdv = 1 then text3:= 'Votre adversaire fait coupe critique sur vous. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire fait coupe critique sur vous.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire fait coupe critique. C´est très efficace.';
        end;
      if (precisionAdv > 1) and (precisionAdv <=90) then
        begin
          degatAdv2 := 0;
          degatPers2 := calculDegatAdv;
          if efficaciteAdv = 1 then text3:= 'Votre adversaire tire une flèche. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire tire une flèche.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire tire une flèche. C´est très efficace.';
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
end.

