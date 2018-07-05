unit objetErreur;

interface
  uses
    Sysutils,
    gestionEcran,
    insererLignes;


//Header
  procedure msgErreurUtiliser;


implementation
procedure msgErreurUtiliser;
  begin
    effacerEcran;
    lignes(8);
    writeln('                        ---------------- Erreur: -------------');
    lignes(1);
    writeln('                       Vous ne pouvez pas utiliser cette objet.');
    lignes(1);
    writeln('                        Vous pouvez que la vendre ou la jetter.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma réponse: > ');readln;
  end;
end.
