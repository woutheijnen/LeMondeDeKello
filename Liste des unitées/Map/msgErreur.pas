unit msgErreur;

interface
  uses
    Sysutils,
    insererLignes,
    gestionEcran;


//Header
  procedure wrapErreur;


implementation
procedure wrapErreur;
  begin
    effacerEcran;
    lignes(9);
    writeln('                      --------------------------------------');
    lignes(1);
    writeln('                      Il semble que cette route va nul part..');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(10);
    write(' Ma réponse: > ');readln;
  end;
end.
