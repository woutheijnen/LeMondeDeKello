unit ginseng;

interface
  uses
    Sysutils,
    ram,
    formuleVitesse,
    gestionEcran,
    insererLignes;


  var
    tmp: Integer;
{Variable temporaire pour calculer la différence d´avant l´utlisation et après.}


//Header
  procedure utiliserGinseng;


implementation
procedure utiliserGinseng;
  begin
    tmp := calculVitessePers;
    veVitesse := lireIntegerRam(23);
    veVitesse := veVitesse + 20;
    if veVitesse > 510 then veVitesse := 510;
    ecrireIntegerRam(23, veVitesse);
    tmp := calculVitessePers - tmp;

    effacerEcran;
    lignes(8);
    writeln('                        ---------------- Ginseng: -------------');
    lignes(1);
    writeln('             Vous mangez le Ginseng et vous sentez plus dynamique');
    lignes(1);
    writeln('          avec des meuilleurs réflexes.. Votre vitesse monte de ',tmp,' points.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma réponse: > ');readln;
  end;
end.

