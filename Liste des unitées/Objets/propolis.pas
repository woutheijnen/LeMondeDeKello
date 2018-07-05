unit propolis;

interface
  uses
    Sysutils,
    ram,
    formuleDefense,
    gestionEcran,
    insererLignes;


  var
    tmp: Integer;
{Variable temporaire pour calculer la différence d´avant l´utlisation et après.}


//Header
  procedure utiliserPropolis;


implementation
procedure utiliserPropolis;
  begin
    tmp := calculDefensePers;
    veDefense := lireIntegerRam(22);
    veDefense := veDefense + 20;
    if veDefense > 510 then veDefense := 510;
    ecrireIntegerRam(22, veDefense);
    tmp := calculDefensePers - tmp;

    effacerEcran;
    lignes(8);
    writeln('                        --------------- Propolis: -------------');
    lignes(1);
    writeln('           Vous mangez le Propolis et vous sentez un renforcement dans');
    lignes(1);
    writeln('          votre système immunitaire.. Votre défense monte de ',tmp,' points.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma réponse: > ');readln;
  end;
end.

