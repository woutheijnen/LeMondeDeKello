unit galackData;

interface
  uses
    Sysutils,
    ram,
    insererLignes,
    gestionEcran,
    combat;


//Header
  procedure parlerGalack;


implementation
procedure parlerGalack;
  begin
    galack := lireIntegerRam(75);
    effacerEcran;
    lignes(7);
    writeln('                      ---------------GALACK:----------------');
    lignes(1);
    writeln('                             Salut ',nom,' le ',pClasse,' !');
    lignes(1);
    writeln('                                comment ca va?');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(2);
    writeln('       1: Bien et toi?');
    writeln('       2: Bof..');
    writeln('       3: Tu fait quoi dans le Monde de Kello?');
    writeln('       4: Je vais te tuer.');
    if galack = 1 then writeln('       5: Reste ici.')
      else writeln('       5: Tu veut m´accompagner à nouveau?');
    writeln('       AUTRE TOUCHE: -Rien dire-');
    lignes(2);
    write(' Ma réponse: > ');readln(choix);

    if (choix = '1') then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ---------------GALACK:----------------');
        lignes(1);
        writeln('                             Moi aussi ',nom,' !');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(12);
        write(' Ma réponse: > ');readln;
      end;

    if (choix = '2') then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ---------------GALACK:----------------');
        lignes(1);
        writeln('                                     Ah ...');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(12);
        write(' Ma réponse: > ');readln;
      end;

    if (choix = '3') then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ---------------GALACK:----------------');
        lignes(1);
        writeln('                           Je suis juste un simple guide!');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(12);
        write(' Ma réponse: > ');readln;
      end;

    if (choix = '4') then
      begin
        repeat
        effacerEcran;
        lignes(7);
        writeln('                      ---------------GALACK:----------------');
        lignes(1);
        writeln('                       Ah ouais? Hmpf. T´en est sur de toi?.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(2);
        writeln('         1: Oui');
        writeln('         2: Non');
        lignes(8);
        write(' Ma réponse: > ');readln(choix);
        ecrireStringRam(13, 'Gallack');
        ecrireStringRam(14, '');
        ecrireIntegerRam(48, nivCombat);
        ecrireIntegerRam(65, 80);
        ecrireStringRam(9, 'Hybride');
        ecrireStringRam(21, 'Paralysation');
        ecrireStringRam(22, 'Glaciation');
        ecrireStringRam(23, 'Soignage');
        ecrireStringRam(24, 'Aéroblast');
        ecrireIntegerRam(75, 0);
        ecrireIntegerRam(76, 99);
        if choix = '1' then demarCombat;
        until ((choix = '1') or (choix = '2'));
      end;

    if (choix = '5') then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ---------------GALACK:----------------');
        lignes(1);
        writeln('                                D´accord très bien!');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(12);
        write(' Ma réponse: > ');readln;
        if galack = 1 then ecrireIntegerRam(75, 0)
          else ecrireIntegerRam(75, 1);
      end;
  end;
end.
