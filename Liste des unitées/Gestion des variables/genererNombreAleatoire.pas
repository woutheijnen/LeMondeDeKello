unit genererNombreAleatoire;

interface
  uses
    SysUtils,
    ram;


//Header
  procedure aleatoire(debut, fin: Integer);


implementation
  procedure aleatoire(debut, fin: Integer);
    begin
      randomize;
      alea := (random(fin)+debut);
      ecrireIntegerRam(0,alea);
    end;
end.
