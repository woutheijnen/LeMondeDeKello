unit tribulus;

interface
  uses
    Sysutils,
    ram,
    formuleAttaque,
    gestionEcran,
    insererLignes;


  var
    tmp: Integer;
{Variable temporaire pour calculer la diff�rence d�avant l�utlisation et apr�s.}


//Header
  procedure utiliserTribulus;


implementation
procedure utiliserTribulus;
  begin
    tmp := calculAttaquePers;
    veAttaque := lireIntegerRam(21);
    veAttaque := veAttaque + 20;
    if veAttaque > 510 then veAttaque := 510;
    ecrireIntegerRam(21, veAttaque);
    tmp := calculAttaquePers - tmp;

    effacerEcran;
    lignes(8);
    writeln('                        ---------- Tribulus Terrestris: --------');
    lignes(1);
    writeln('           Vous mangez le Tribulus Terrestris et vous sentez plus de');
    lignes(1);
    writeln('       testost�rone couler dans vos veines.. Votre attaque monte de ',tmp,' points.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma r�ponse: > ');readln;
  end;
end.
