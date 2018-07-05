unit objetsMap;

interface
  uses
    gestionEcran,
    Sysutils,
    ram,
    insererLignes,
    formulePv;


//Header
  procedure lit;


implementation
procedure lit;
  begin
    repeat
      effacerEcran;
      lignes(6);
      writeln('                      ----------------- LIT ----------------');
      lignes(1);
      writeln('                            Ce lit semble confortable..');
      lignes(1);
      writeln('                       Voulez-vous dormir pour vous soigner?');
      lignes(1);
      writeln('                            (o pour Oui / n pour non)');
      lignes(1);
      writeln('                      -------------------------------------');
      lignes(8);
      write(' Ma réponse: > ');readln(choix);
      if ((choix = 'n') or (choix = 'N')) then exit;
    until ((choix = 'o') or (choix = 'O'));
    pvPersActuel := calculPvPersMax;
    ecrireIntegerRam(9, pvPersActuel);
    ecrireStringRam(15, '');
  end;
end.
