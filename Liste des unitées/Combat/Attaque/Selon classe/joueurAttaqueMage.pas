unit joueurAttaqueMage;

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


//Header
  procedure persAttMage;


implementation
procedure persAttMage;
  begin
    aleatoire(0,101);
    precisionPers := lireIntegerRam(0);
    ecrireIntegerRam(64, 2);
    ecrireIntegerRam(66, 10);

      if (precisionPers = 0) then
        begin
          degatPers := calculDegatEchecCritiquePers;
          degatAdv := 0;
          text1:= 'Vous essayez de tapper votre adversaire mais vous tombez.';
        end;
      if (precisionPers = 1) then
        begin
          degatPers := 0;
          degatAdv := calculDegatCritiquePers;
          text1:= 'Vous lancez une coupe critique. Mais ca reste horriblement inefficace.';
        end;
      if (precisionPers > 1) and (precisionPers <90) then
        begin
          degatPers := 0;
          degatAdv := calculDegatPers;
          text1:= 'Vous tappez votre adversaire avec votre canne. C´est horriblement inefficace.';
        end else
              begin
                degatAdv := 0;
                degatPers := 0;
                text1 := 'Vous ratez votre attaque.';
              end;
      ecrireStringRam(16, text1);
      ecrireStringRam(17, '');
      ecrireIntegerRam(57, degatPers);
      ecrireIntegerRam(58, degatAdv);
  end;
end.

