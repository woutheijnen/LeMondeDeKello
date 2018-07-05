unit adversaireAttaqueVampire;

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
  procedure advAttVampire;


implementation
procedure advAttVampire;
  begin
    aleatoire(0,101);
    precisionAdv := lireIntegerRam(0);
    efficaciteAdv := lireIntegerRam(53);
    statutPers := lireStringRam(15);
    statutAdv := lireStringRam(14);
    soinAdv := 0;

    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
      if (chanceStatut = 1) and (statutPers = '') and (precisionAdv > 0) and (precisionAdv <= 90) then
        begin
          text4 := 'Vous commencez à perdre de la force.';
          statutPers := 'Hypovolémie';
          ecrireStringRam(15, statutPers);
        end;
      if (precisionAdv = 0) then
        begin
          degatAdv2 := calculDegatEchecCritiqueAdv;
          degatPers2 := 0;
          if statutAdv <> 'Anti-Soin' then soinAdv := (degatAdv2 div 2);
          text3:= 'Votre adversaire essaye de vous drainer mais draine lui-même.';
        end;
      if (precisionAdv = 1) then
        begin
          degatPers2 := calculDegatCritiqueAdv;
          if statutAdv <> 'Anti-Soin' then soinAdv := (degatPers2 div 2);
          degatAdv2 := 0;
          if efficaciteAdv = 1 then text3:= 'Votre adversaire vous draine et fait coupe critique. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire vous draine et fait coupe critique.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire vous draine et fait coupe critique. C´est très efficace.';
        end;
      if (precisionAdv > 1) and (precisionAdv <=90) then
        begin
          degatAdv2 := 0;
          degatPers2 := calculDegatAdv;
          if statutAdv <> 'Anti-Soin' then soinAdv := (degatPers2 div 2);
          if efficaciteAdv = 1 then text3:= 'Votre adversaire vous draine. Ce n´est pas très efficace.';
          if efficaciteAdv = 2 then text3:= 'Votre adversaire vous draine.';
          if efficaciteAdv = 4 then text3:= 'Votre adversaire vous draine. C´est très efficace.';
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            soinAdv := 0;
            text3 := 'Votre adversaire se rate.';
          end;
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    ecrireIntegerRam(59, degatPers2);
    ecrireIntegerRam(60, degatAdv2);
    ecrireIntegerRam(51, soinAdv);
  end;
end.

