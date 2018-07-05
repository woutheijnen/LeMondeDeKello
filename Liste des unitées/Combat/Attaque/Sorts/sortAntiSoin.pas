unit sortAntiSoin;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram;

  var
    precision: Integer;
{Nombre aléatoire qui rend un attaque un echec critique, un coupe critique, un attaque normale,
un rattage mais peuvent aussi donner des statuts différents selon les sorts.}


//Header
  procedure antiSoinAdv;
  procedure antiSoinPers;


implementation
procedure antiSoinAdv;
  begin
    aleatoire(0,101);
    precision := lireIntegerRam(0);
    statutPers := lireStringRam(15);
    statutAdv := lireStringRam(14);

      if (precision = 0) then
        begin
          text3 := 'Votre adversaire essaye de lancer anti-soin, mais le lance sur lui même.';
          degatPers2 := 0;
          degatAdv2 := 0;
          statutAdv := 'Anti-Soin';
        end;
      if (precision > 0) and (precision <= 90) then
        begin
          text3 := 'Votre adversaire lance anti-soin sur vous.';
          degatPers2 := 0;
          degatAdv2 := 0;
          statutPers := 'Anti-Soin';
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
    ecrireStringRam(15, statutPers);
    ecrireStringRam(14, statutAdv);
  end;


procedure antiSoinPers;
  begin
    aleatoire(0,101);
    precision := lireIntegerRam(0);
    statutPers := lireStringRam(15);
    statutAdv := lireStringRam(14);
      if (precision = 0) then
        begin
          text1 := 'Pendant que vous essayez de lancer anti-soin, vous vous loupez.';
          degatPers := 0;
          degatAdv := 0;
          statutPers := 'Anti-Soin';
        end;
      if (precision > 0) and (precision <= 90) then
        begin
          text1 := 'Vous lancez anti-soin sur votre adversaire.';
          degatPers := 0;
          degatAdv := 0;
          statutAdv := 'Anti-Soin';
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text1 := 'Vous ratez votre attaque.';
          end;
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireIntegerRam(57, degatPers);
    ecrireIntegerRam(58, degatAdv);
    ecrireStringRam(15, statutPers);
    ecrireStringRam(14, statutAdv);
  end;
end.
