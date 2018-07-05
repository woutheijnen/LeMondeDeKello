unit joueurAttaqueGuerrier;

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
  procedure persAttGuerrier;


implementation
procedure persAttGuerrier;
  begin
    aleatoire(0,101);
    precisionPers := lireIntegerRam(0);
    efficacitePers := lireIntegerRam(64);
    statutAdv := lireStringRam(14);
    aleatoire(1,20);
    chanceStatut := lireIntegerRam(0);

      if (chanceStatut = 1) and (statutAdv = '') and (precisionPers > 0) and (precisionPers <= 90) then
        begin
          text2 := 'Votre adversaire commence a saigner gravement.';
          statutAdv := 'Saigne';
          ecrireStringRam(14, statutAdv);
        end;

      if (precisionPers = 0) then
        begin
          degatPers := calculDegatEchecCritiquePers;
          degatAdv := 0;
          text1:= 'Vous essayez d´attaquer votre adversaire, mais vous vous coupez.';
        end;
      if (precisionPers = 1) then
        begin
          degatPers := 0;
          degatAdv := calculDegatCritiquePers;
          if (efficacitePers = 1) then text1:= 'Vous lancez une coupe critique. Ce n´est pas très efficace.';
          if (efficacitePers = 2) then text1:= 'Vous lancez une coupe critique.';
          if (efficacitePers = 4) then text1:= 'Vous lancez une coupe critique. C´est très efficace.';
        end;
      if (precisionPers > 1) and (precisionPers <90) then
        begin
          degatPers := 0;
          degatAdv := calculDegatPers;
          if (efficacitePers = 1) then text1:= 'Vous tranchez votre adversaire. Ce n´est pas très efficace.';
          if (efficacitePers = 2) then text1:= 'Vous tranchez votre adversaire.';
          if (efficacitePers = 4) then text1:= 'Vous tranchez votre adversaire. C´est très efficace.';
        end else
              begin
                degatAdv := 0;
                degatPers := 0;
                text1 := 'Vous ratez votre attaque.';
              end;
      ecrireStringRam(16, text1);
      ecrireStringRam(17, text2);
      ecrireIntegerRam(57, degatPers);
      ecrireIntegerRam(58, degatAdv);
  end;
end.
