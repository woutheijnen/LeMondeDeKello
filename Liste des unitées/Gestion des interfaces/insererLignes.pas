unit insererLignes;

interface
  uses
    SysUtils;


  var
    i: Integer;
{Compteur.}


//Header
  procedure lignes(nbLignes: Integer);


implementation
//Permet d'ins�rer <<fin>> lignes
  procedure lignes(nbLignes: Integer);
    begin
      for i := 1 to nbLignes do writeln;
    end;
end.
