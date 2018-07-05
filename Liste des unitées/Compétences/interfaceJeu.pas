unit interfaceJeu;

interface
  uses
    Sysutils,
    ram,
    gestionEcran,
    insererLignes,
    sauvegarder,
    sac,
    aide,
    stats,
    config;

//Header
  procedure menuJeu;


implementation
procedure menuJeu;
  begin
    effacerEcran;
    lignes(3);
    writeln('                      ----------------- MENU: ---------------');
    writeln('                       Choisissez ce que vous aimerez faire');
    lignes(2);
    writeln('                           1: Ouvrir votre sac');
    lignes(1);
    writeln('                           2: Voir vos statistiques');
    lignes(1);
    writeln('                           3: Sauvegarder votre progrès');
    lignes(1);
    writeln('                           4: Aide');
    lignes(1);
    writeln('                           5: Paramètres');
    lignes(1);
    writeln('                           6: Revenir au menu princpal (sans sauvegarder)');
    lignes(1);
    writeln('                      ---------------------------------------');
    lignes(4);
    write(' Ma réponse: > ');readln(choix);
    if choix = '1' then ouvrirSac;
    if choix = '2' then statMenu;
    if choix = '3' then sauvegarde;
    if choix = '4' then aideMenu;
    if choix = '5' then configuration;
    if choix = '6' then quitter := 1;
  end;
end.
