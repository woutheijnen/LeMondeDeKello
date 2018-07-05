unit chargement;

interface
  uses
    Sysutils,
    ram,
    genererNombreAleatoire,
    GestionEcran,
    insererLignes,
    jeu,
    questionImage;


  var
    disque: String[1];
{Ce variable contient le nom du volume ou la programme va écrire et est par défaut 'c' mais si
le programme n'arrive pas à sauvgarder sur c, le programme génère une lettre aléatoire et effectu
une tentative de sauvgarde sur ce volume au lieu de c.}
    fichierSauv: Text;
{Contient le nom et l'adresse du fichier à sauvegarder.}
    data: Integer;
    data2: String;
{Contiennes les données à charger.}
    marqueSauv: String;
{Contiens le marque d'un sauvegarde de Le Monde de Kello.
Si il y a marqué quelquechose d'autre dans le fichier, le chargement est annulé pour éviter des données
corruptes.}


//Header
  procedure chargerJeu;
  procedure chargerMenu;
  procedure chargerManu;


implementation
//Procédure de chargement d'un partie -----------------------------------------
procedure chargerJeu;
  begin
//Initialisation du volume par défaut: C
    disque := 'c';
    i := 0;

    repeat
    begin
    effacerEcran;
    i := i+1;
    couleurTexte(12);
    writeln('Appuyez sur "Continuer" si vous voyez des erreurs.');
    couleurTexte(15);

//Le programme fait une tentative de sauvgarde
//{$I-} permet de faire des tentatives, si le programme n'arrive pas à sauvgarder,
//le programme ignore l'instruction et enregistre une valeur non nul en IOResult.
    assign(fichierSauv,disque+':\Sauv_Kello.txt');
    {$I-}

//Ouvrir le fichier de sauvgarde
    reset(fichierSauv);
    {$I-}

//Lecture du header de sauvgarde (pour pas confondre des autres fichiers textes ordinaires avec
//une sauvgarde) C'est une légère stratégie anti-corruption des données.
    readln(fichierSauv,marqueSauv);
    {$I-}

//Activation des controles d'erreurs (pour voir si il y a u des erreurs précédament comme par exemple
//fichier de sauvegarde introuvable).
    If (IOResult <> 0) then
      begin

//Si il y a u une erreur, on essaye un autre volume choisi au hasard
        aleatoire(0,25);
        disque:= chr(ord('a') + lireIntegerRam(0));
      end else
            begin
              if marqueSauv = 'Fichier de sauvegarde du jeu "Le Monde de Kello".' then
                begin
//Chargement des données / lectures des lignes dans le fichier de sauvgarde.
                  readln(fichierSauv,data);
                  ecrireIntegerRam(1, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(2, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(3, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(4, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(5, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(6, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(7, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(8, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(9, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(14, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(15, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(16, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(17, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(18, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(19, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(20, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(21, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(22, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(23, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(24, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(25, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(26, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(27, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(28, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(29, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(30, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(31, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(32, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(33, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(35, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(56, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(66, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(73, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(74, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(75, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(76, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(77, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(78, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(79, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(80, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(81, data);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(1, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(2, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(3, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(4, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(5, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(6, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(7, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(8, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(10, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(15, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(33, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(34, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(35, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(36, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(37, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(38, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(39, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(40, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(41, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(42, data2);
                  {$I-}

                  close(fichierSauv);
                  {$I-}
                  {$I+}

                  lignes(9);
                  writeln('                      ╒══════════════════════════════════╕');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('        Chargement réussi!        '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('         Chargé depuis: ',disque,':\       '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  writeln('                      ╘══════════════════════════════════╛');
                  lignes(8);
                  write(' Ma réponse: > '); readln;

                  demarJeu;
                  exit;
                end
        else if i > 250 then
      begin
      lignes(9);
      writeln('                      ╒══════════════════════════════════╕');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('      Erreur de chargement!       '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('   Veuillez essayer a nouveau..  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      writeln('                      ╘══════════════════════════════════╛');
      lignes(8);
      write(' Ma réponse: > '); readln;
      exit;
      end;

//Fermeture du fichier de sauvegarde.
          close(fichierSauv);
          {$I-}
          {$I+}
      end;
    end;
    until FALSE;
  end;


procedure chargerManu;
  begin
    effacerEcran;
    lignes(24);
    write('Veuillez entrer le disque ou le sauvegardement se trouve: '); readln(disque);
    i := 0;

    repeat
    begin
    effacerEcran;
    i := i+1;
    couleurTexte(12);
    writeln('Appuyez sur "Continuer" si vous voyez des erreurs.');
    couleurTexte(15);

//Le programme fait une tentative de sauvgarde
//{$I-} permet de faire des tentatives, si le programme n'arrive pas à sauvgarder,
//le programme ignore l'instruction et enregistre une valeur non nul en IOResult.
    assign(fichierSauv,disque+':\Sauv_Kello.txt');
    {$I-}

//Ouvrir le fichier de sauvgarde
    reset(fichierSauv);
    {$I-}

//Lecture du header de sauvgarde (pour pas confondre des autres fichiers textes ordinaires avec
//une sauvgarde) C'est une légère stratégie anti-corruption des données.
    readln(fichierSauv,marqueSauv);
    {$I-}

//Activation des controles d'erreurs (pour voir si il y a u des erreurs précédament comme par exemple
//fichier de sauvegarde introuvable).
    If (IOResult <> 0) then
      begin
      end else
            begin
              if marqueSauv = 'Fichier de sauvegarde du jeu "Le Monde de Kello".' then
                begin
//Chargement des données / lectures des lignes dans le fichier de sauvgarde.
                  readln(fichierSauv,data);
                  ecrireIntegerRam(1, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(2, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(3, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(4, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(5, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(6, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(7, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(8, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(9, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(14, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(15, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(16, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(17, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(18, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(19, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(20, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(21, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(22, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(23, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(24, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(25, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(26, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(27, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(28, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(29, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(30, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(31, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(32, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(33, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(35, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(56, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(66, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(73, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(74, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(75, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(76, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(77, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(78, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(79, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(80, data);
                  {$I-}
                  readln(fichierSauv,data);
                  ecrireIntegerRam(81, data);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(1, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(2, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(3, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(4, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(5, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(6, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(7, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(8, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(10, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(15, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(33, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(34, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(35, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(36, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(37, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(38, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(39, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(40, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(41, data2);
                  {$I-}
                  readln(fichierSauv,data2);
                  ecrireStringRam(42, data2);
                  {$I-}

                  close(fichierSauv);
                  {$I-}
                  {$I+}

                  lignes(9);
                  writeln('                      ╒══════════════════════════════════╕');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('        Chargement réussi!        '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('         Chargé depuis: ',disque,':\       '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  write('                      │'); couleurFond(12);
                  write('                                  '); couleurFond(0); writeln('│');
                  writeln('                      ╘══════════════════════════════════╛');
                  lignes(8);
                  write(' Ma réponse: > '); readln;

                  demarJeu;
                  exit;
                end
        else
      begin
      lignes(9);
      writeln('                      ╒══════════════════════════════════╕');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('      Erreur de chargement!       '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('   Veuillez essayer a nouveau..  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      writeln('                      ╘══════════════════════════════════╛');
      lignes(8);
      write(' Ma réponse: > '); readln;
      exit;
      end;

//Fermeture du fichier de sauvegarde.
      close(fichierSauv);
      {$I-}
      {$I+}
      end;
    end;
    until FALSE;
  end;


procedure chargerMenu;
  begin
    repeat
    quitter := lireIntegerRam(25);
    effacerEcran;
    lignes(8);
    writeln('            Appuyez sur 1 pour chargement automatique.');
    writeln('            Appuyez sur 2 pour chargement manuel.');
    writeln('                  (Si automatique ne fonctionne pas');
    writeln('                   et vous conaissez l´emplacement de sauvegarde)');
    lignes(2);
    writeln('            Appuyez sur "q" pour revenir au menu principal.');
    lignes(9);
    write(' Ma réponse: > ');readln(choix);
    if choix = '1' then chargerJeu;
    if choix = '2' then chargerManu;
    if ((choix = 'q') or (choix = 'Q')) then exit;
    until quitter = 1;
  end;
end.
