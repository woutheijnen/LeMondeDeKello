unit questionImage;

interface
  uses
    SysUtils,
    GestionEcran,
    insererLignes;


//Header
procedure question;


implementation
//Interface question ----------------------------------------------------------
procedure question;
begin
    lignes(2);
    writeln('        _____');
    writeln('       / ___ \');
    writeln('      ( (   ) )');
    writeln('       \/  / /');
    writeln('          ( (');
    writeln('          | |');
    writeln('          (_)');
    writeln('           _');
    writeln('          (_)');
    lignes(1);
  end;
end.
