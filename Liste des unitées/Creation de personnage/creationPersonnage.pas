unit creationPersonnage;

interface
  uses
    Sysutils,
    imageProf,
    entrerSexe,
    entrerNom,
    ram,
    classe,
    insererLignes,
    questionImage,
    GestionEcran,
    mmSystem,
    jeu,
    aide;


//Header
  procedure nouveauJeu;


implementation
procedure nouveauJeu;
  begin
    playsound('menu.wav', 0, SND_ASYNC);
    text1 := 'Salut! Comment allez-vous?';
    text2 := 'Je m´appèle Marek et je serais votre instructeur.';
    text3 := 'Le monde de Kello est rempli d´aventures qui vous';
    text4 := 'attendent!';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'Bref! Je pense que vous allez avoir une aventure';
    text2 := 'exceptionnel, mais faite gaffe quand meme!';
    text3 := 'Il peut avoir des dangers par tout..';
    text4 := 'Avant de démarrer votre aventure, j´ai d´abord';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    demandeSexe;
    demandeNom;

    nom := lireStringRam(1);
    text1 := nom;
    text2 := 'Ah d´accord! Enchanté!';
    text3 := 'Je pense que c´est un très joli prénom.';
    text4 := 'Bref, vous êtes un quoi?..';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    choisirClasse;

    text1 := 'Que désirez vous comme difficulté dans le jeu?';
    text2 := 'Ceci influence les stats de  votre adversaire';
    text3 := 'mais fait que vous gagnez plus de xp et de';
    text4 := 'l´or après vos combats aussi!';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'Il y a 5 differents modes:';
    text2 := 'Novice; Facile; Normal; Difficile; Elite ';
    text3 := 'Et 1 mode spéciale: Mode Hardcore';
    text4 := 'Qui est presque impossible.';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    repeat
      repeat
        sortie := FALSE;
        text1 := 'Tappez 1 pour Novice, 2 pour Facile,';
        text2 := '3 pour Normal, 4 pour Difficile,';
        text3 := '5 pour Elite, ou 6 pour';
        text4 := 'Hardcore.';
        ecrireStringRam(16, text1);
        ecrireStringRam(17, text2);
        ecrireStringRam(18, text3);
        ecrireStringRam(19, text4);
        prof;

        choix := lireStringRam(0);
        if (choix = '1') then diff := 'Novice';
        if (choix = '2') then diff := 'Facile';
        if (choix = '3') then diff := 'Normal';
        if (choix = '4') then diff := 'Difficile';
        if (choix = '5') then diff := 'Elite';
        if (choix = '6') then diff := 'Hardcore';
        ecrireStringRam(10, diff);

      until ((choix = '1') or (choix = '2') or (choix = '3') or (choix = '4') or (choix = '5')
            or (choix = '6'));

    effacerEcran;
    lignes(7);
    writeln('                         ---------------------------------');
    writeln('                            Etes-vous sûr ', nom,'?');
    writeln('                          Vous-avez choisi ', diff,'.');
    writeln('                        "o" pour Oui, autre touche pour Non');
    writeln('                         ________________________________');
    question;
    write(' Ma réponse: > '); readln(choix);
    if (choix = 'o') then sortie := TRUE;
    until (sortie = TRUE);

    diff := lireStringRam(10);
    pClasse := lireStringRam(4);

    if diff = 'Novice' then valDiff := 2;
    if diff = 'Facile' then valDiff := 3;
    if diff = 'Normal' then valDiff := 4;
    if diff = 'Difficile' then valDiff := 6;
    if diff = 'Elite' then valDiff := 9;
    if diff = 'Hardcore' then valDiff := 18;

    if (diff = 'Novice') then orDiff := 200;
    if (diff = 'Facile') then orDiff := 150;
    if (diff = 'Normal') then orDiff := 100;
    if (diff = 'Difficile') then orDiff := 50;
    if (diff = 'Elite') then orDiff := 25;
    if (diff = 'Hardcore') then orDiff := 12;

//Ecriture les valeurs définis dans le ram
    ecrireIntegerRam(34, valDiff);
    ecrireIntegerRam(36, orDiff);

    text1 := 'D´accord très bien!';
    text2 := '';
    text3 := 'Voici les commandes et comment le map fonctionne.';
    text4 := '';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    aideMenu;

    text1 := 'Vous avez plusieurs compétences que vous pouvez';
    text2 := 'pratiquer et entrainer: La compétence Combat';
    text3 := 'va changer vos stats en attaque, défense,';
    text4 := '';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'vitesse et pv selon votre niveau de combat.';
    text2 := 'Ce qui influence les dégats vous et votre';
    text3 := 'adversaire prendronts, la taux de réussite de';
    text4 := 'fuire et celui qui attaque en premier.';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'Des armes différentes sont à votre disponibilité';
    text2 := 'chez le forgeron, l´artisan, la mage suprême et';
    text3 := 'le vampire suprême. Quand vous achetez des';
    text4 := 'nouveaux armes, vous ferez plus de dégats.';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'Si vous mourrez vous perdez vos objets et';
    text2 := 'votre or mais vous garderez vos compétences.';
    text3 := 'Vous pouvez aussi faire des quêtes chez';
    text4 := 'quelques individus qui ont besoin des';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'aventuriers courageux.';
    text2 := 'Si vous avez besoin d´aide, entrez d´abord';
    text3 := '"x" pour ouvrir le menu et appuyez sur 4';
    text4 := 'pour sélectionner "aide". Vous pouvez aussi';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    text1 := 'sauvegarder votre progrès à partir de ce menu,';
    text2 := 'retourner au menu principal, voir vos stats,';
    text3 := 'votre sac, etc. Bref! En route vers le château!';
    text4 := '          B o n n e     c h a n c e  !';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    effacerEcran;
    lignes(7);
    writeln('                      -------------------------------------');
    lignes(1);
    writeln('                         Et votre aventure commence!');
    lignes(1);
    writeln('                   Utilisez "x" pour ouvrir le menu du jeu!');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(10);
    playsound('valid.wav', 0, SND_ASYNC);
    attendre(5000);

    nbMap := 1;
    ecrireIntegerRam(14, nbMap);

    repeat
    sexe := lireStringRam(2);
    effacerEcran;
    lignes(7);
    writeln('                      ----------------LE ROI:---------------');
    lignes(1);
    if sexe = 'f' then writeln('                     Salut brave femme! Et bienvenu à mon chateau!')
    else writeln('                     Salut brave homme! Et bienvenu à mon chateau!');
    writeln('                            Tu est bien ',nom,' non?');
    writeln('                       Bien bien, et toi aussi bienvenu Galack!');
    writeln('                   Vous avez rencontré des problèmes sur la route?');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(2);
    writeln('          1: Oui un homme ivre nous a attaqué, mais je m´en suis occupé.');
    writeln('          2: Il pleuvait, et Gallack arretais pas de se plaindre.');
    writeln('          3: Non, rien.');
    lignes(4);
    write(' Ma réponse: > ');readln(choix);

    if choix = '1' then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ----------------LE ROI:---------------');
        lignes(1);
        writeln('                        QUOI?| JUSTE UN HOMME IVRE?!');
        lignes(1);
        writeln('              Tu sais que c´étais mon frère que tu viens de tuer?..');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(10);
        write(' Ma réponse: > ');readln;
      end;

    if (choix = '2') or (choix = '3') then
      begin
        effacerEcran;
        lignes(7);
        writeln('                      ----------------LE ROI:---------------');
        lignes(1);
        writeln('                   Oui biensûr, et tu ne parle pas sur le petit');
        writeln('              accident dans l´auberge? L´homme ivre c´était mon frère.');
        writeln('                           tu as tué mon frère...');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(10);
        write(' Ma réponse: > ');readln;
      end;
    until ((choix = '1') or (choix = '2') or (choix = '3'));

    effacerEcran;
    lignes(7);
    writeln('                      ----------------LE ROI:---------------');
    lignes(1);
    writeln('                          Bref. J´enais mare de vous!');
    writeln('                 Mages! Teleportez ',nom,' et Galack à Nuva Ville!');
    writeln('                               ca les apprendras!');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(10);
    write(' Ma réponse: > ');readln;
    playSound('chTele.wav', 0, SND_ASYNC);
    demarJeu;
  end;
end.
