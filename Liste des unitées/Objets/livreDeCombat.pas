unit livreDeCombat;

interface
  uses
    Sysutils,
    ram,
    tableXp,
    gestionEcran,
    insererLignes;


//Header
  procedure utiliserLivDCombat;


implementation
procedure utiliserLivDCombat;
  begin
    nivCombat := lireIntegerRam(1);
    nivCombat := nivCombat + 1;
    ecrireIntegerRam(1, nivCombat);
    if nivCombat > 100 then msgNiv := 0
    else msgNiv := 1;
    tableXpCombat;

    if msgNiv = 0 then
      begin
        effacerEcran;
        lignes(8);
        writeln('                        ---------- Livre de Combat: -----------');
        lignes(1);
        writeln('               Vous lissez le livre, mais vous n´apprenez rien de nouveau.');
        lignes(1);
        writeln('                        -------------------------------------');
        lignes(11);
        write(' Ma réponse: > ');readln;
      end;

    if msgNiv = 1 then
      begin
        effacerEcran;
        lignes(8);
        writeln('                        ---------- Livre de Combat: -----------');
        lignes(1);
        writeln('            Vous lissez le livre, vous êtes maintenant niveau ',nivCombat,'.');
        lignes(1);
        writeln('                        -------------------------------------');
        lignes(11);
        write(' Ma réponse: > ');readln;
      end;
  end;
end.
