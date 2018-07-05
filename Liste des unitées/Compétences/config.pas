unit config;

interface
    uses
      Sysutils,
      ram,
      gestionEcran,
      insererLignes;


//Header
  procedure configuration;


implementation
procedure configuration;
  begin
    repeat
    nom := lireStringRam(1);
    sexe := lireStringRam(2);
    joueurAsp := lireStringRam(3);
    diff := lireStringRam(10);

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        |           Paramètres            |');
    writeln('                         ---------------------------------');
    lignes(3);
    writeln('         Appuyez sur une touche (1, 2, ..) pour changer les paramètres');
    writeln('          Ou sur "q" pour quitter');
    lignes(4);
    writeln('                1:  Nom                     : ',nom);
    writeln('                2:  Sexe                    : ',sexe);
    writeln('                3:  Aspect sur le map       : ',joueurAsp);
    writeln('                4:  Niveau de Difficulté    : ',diff);
    lignes(7);
    write(' Ma réponse: > '); readln(choix);

    effacerEcran;
    lignes(24);
    if choix = '1' then
      begin
        write('Nouvelle valeur pour nom? ');
        temp := nom;
        read(nom);
        if ((nom = '') or (nom = ' ') or (nom = '  ') or (nom = '   ') or (nom = '    ') or (nom = '     ') or
        (nom = '      ') or (nom = '       ') or (nom = '        ') or (nom = '         ') or (nom = '          '))
        then nom := temp;
        ecrireStringRam(1, nom);
        choix := '';
      end;
    if choix = '2' then
      begin
        write('Nouvelle valeur pour sexe? (m/f) ');
        read(choix);
        if ((choix = 'm') or (choix = 'f'))  then ecrireStringRam(2, choix);
        choix := '';
      end;
    if choix = '3' then
      begin
        write('Nouvelle valeur pour aspect? ');
        read(choix);
        if choix <> '' then ecrireStringRam(3, choix);
        choix := '';
      end;
    if choix = '4' then
      begin
        write('Nouvelle valeur pour la degré de difficulté? (1 à 6) ');
        read(choix);
        if choix = '1' then diff := 'Novice';
        if choix = '2' then diff := 'Facile';
        if choix = '3' then diff := 'Normal';
        if choix = '4' then diff := 'Difficile';
        if choix = '5' then diff := 'Elire';
        if choix = '6' then diff := 'Hardcore';
        ecrireStringRam(10, diff);
        choix := '';
      end;
      until ((choix = 'q') or (choix = 'Q'));
  end;
end.
