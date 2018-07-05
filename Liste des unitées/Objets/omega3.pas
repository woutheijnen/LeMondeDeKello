unit omega3;

interface
  uses
    Sysutils,
    ram,
    formulePv,
    gestionEcran,
    insererLignes;


  var
    tmp: Integer;
{Variable temporaire pour calculer la différence d´avant l´utlisation et après.}


//Header
  procedure utiliserOmega3;


implementation
procedure utiliserOmega3;
  begin
    tmp := calculPvPersMax;
    vePv := lireIntegerRam(24);
    vePv := vePv + 20;
    if vePv > 510 then vePv := 510;
    ecrireIntegerRam(24, vePv);
    tmp := calculPvPersMax - tmp;

    effacerEcran;
    lignes(8);
    writeln('                        ---------------- Oméga-3: -------------');
    lignes(1);
    writeln('                Vous buvez l´huile riche en Oméga-3 et vous sentez');
    lignes(1);
    writeln('          que vous venez d´avoir une meilleure protection cardio-vesculaire.');
    lignes(1);
    writeln('                Votre capacité maximale de Pv monte de ',tmp,' points.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;
end.

