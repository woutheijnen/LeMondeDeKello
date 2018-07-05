unit joueurAttaqueVampire;

interface
  uses
    Sysutils,
    ram,
    genererNombreAleatoire,
    formuleDegat;


  var
    precisionPers: Integer;
{Contiens la précision du joueur, qui déduit que si l'attaque sera un coupe critique, un echec critique,
un rattage ou un attaque normal.}
    chanceStatut: Integer;
{Chiffre aléatoire, permet que l'attaque applique un statut sur l'adversaire ou pas.}


//Header
  procedure persAttVampire;


implementation
procedure persAttVampire;
  begin
    aleatoire(0,101);
    precisionPers := lireIntegerRam(0);
    efficacitePers := lireIntegerRam(64);
    statutAdv := lireStringRam(14);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);
    statutPers := lireStringRam(15);

      if (chanceStatut = 1) and (statutAdv = '') and (precisionPers > 0) and (precisionPers <= 90) then
        begin
          text2 := 'Votre adversaire commence à perdre de la force.';
          statutAdv := 'Hypovolémie';
          ecrireStringRam(14, statutAdv);
        end;

      if (precisionPers = 0) then
        begin
          degatPers := calculDegatEchecCritiquePers;
          degatAdv := 0;
          if statutPers <> 'Anti-Soin' then soinPers := (degatPers div 2);
          text1:= 'Vous réussissez à drainer vous même au lieu de votre adversaire.';
        end;
      if (precisionPers = 1) then
        begin
          degatPers := 0;
          degatAdv := calculDegatCritiquePers;
          if statutPers <> 'Anti-Soin' then soinPers := (degatAdv div 2);
          if (efficacitePers = 1) then text1:= 'Vous drainez et faite coupe critique. Ce n´est pas très efficace.';
          if (efficacitePers = 2) then text1:= 'Vous drainez et faite coupe critique.';
          if (efficacitePers = 4) then text1:= 'Vous drainez et faite coupe critique. C´est très efficace.';
        end;
      if (precisionPers > 1) and (precisionPers <90) then
        begin
          degatPers := 0;
          degatAdv := calculDegatPers;
          if statutPers <> 'Anti-Soin' then soinPers := (degatAdv div 2);
          if (efficacitePers = 1) then text1:= 'Vous drainez votre adversaire. Ce n´est pas très efficace.';
          if (efficacitePers = 2) then text1:= 'Vous drainez votre adversaire.';
          if (efficacitePers = 4) then text1:= 'Vous drainez votre adversaire. C´est très efficace.';
        end else
              begin
                degatAdv := 0;
                degatPers := 0;
                soinPers := 0;
                text1 := 'Vous ratez votre attaque.';
              end;

      ecrireStringRam(16, text1);
      ecrireStringRam(17, text2);
      ecrireIntegerRam(57, degatPers);
      ecrireIntegerRam(58, degatAdv);
      ecrireIntegerRam(52, soinPers);
  end;
end.

