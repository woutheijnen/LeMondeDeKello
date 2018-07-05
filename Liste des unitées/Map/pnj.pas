unit pnj;

interface
  uses
    Sysutils,
    ram,
    combat,
    gestionEcran,
    insererLignes,
    formulePv,
    sac,
    monterNiv,
    apprendreSortsMage;


  var
    objetChoisi: String;
{Contiens lóbjet que le joueur à choisi.}
    prixVendre: Integer;
{Contiens le prix pour lequel un objet peut être vendu.}
    valXp: Integer;
{Contiens combien de xp bob donne pour chaque objet.}
    nouvArme: Boolean;
{Si ce valeur est à VRAI, le joueur peut choisir un nouveau arme.}
    matiereEpee, matiereEpeePre: String;
{Nom de la matiere que le joueur a et de l'epee que le forgeron offre mais est également utilisé pour
l'artisan etc.}
    prixEpee: Integer;
{Prix de l'epee que le forgeron offre mais est également utilisé pour l'artisan, etc}
    nbSorts: Integer;
{Contiens combien de sorts le joueur peut apprendre et combien le mage doit lui proposer.}


//Header
  procedure bernard;
  procedure gilles;
  procedure richard;
  procedure aventurierM2;
  procedure jimmy;
  procedure hassan;
  procedure bob;
  procedure vendeur;
  procedure vendeurPasAssez;
  procedure forgeron;
  procedure artisan;
  procedure vampireSupreme;
  procedure mageSupreme;


implementation
procedure mageSupreme;
  begin
    nivCombat := lireIntegerRam(1);
    pClasse := lireStringRam(4);
    nbOr := lireIntegerRam(56);

    nbSorts := 3;
    if (nivCombat >= 30) then nbSorts := 4;
    if (nivCombat >= 40) then nbSorts := 5;
    if (nivCombat >= 50) then nbSorts := 6;
    if (nivCombat >= 60) then nbSorts := 7;
    if (nivCombat >= 70) then nbSorts := 8;
    if (nivCombat >= 80) then nbSorts := 9;
    if (nivCombat >= 90) then nbSorts := 10;
    if (nivCombat >= 100) then nbSorts := 11;

    if((pClasse = 'Guerrier') or (pClasse = 'Rodeur') or (pClasse = 'Vampire')) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      -------------- MAGE SUPREME --------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Mais je ne peut pas vendre mes services à un ',pClasse,'.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if ((pClasse = 'Mage') or (pClasse = 'Mage Noir') or (pClasse = 'Hybride')) then
      begin
        repeat
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(6);
        writeln('                      -------------- MAGE SUPREME --------------');
        lignes(1);
        if sexe = 'f' then writeln('                                  Bonjour madame!')
        else writeln('                                  Bonjour monsieur!');
        lignes(1);
        writeln('                   Je vois que vous-êtes niveau ',nivCombat,' en combat.');
        lignes(1);
        writeln('             Si vous voulez - je pourrais vous apprendre des nouveaux sorts.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(2);
        writeln('       1: Oui');
        writeln('       2: Non');
        lignes(5);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '2' then exit;
        if choix = '1' then
          begin
            effacerEcran;
            lignes(8);
            writeln('                      -------------- MAGE SUPREME --------------');
            lignes(1);
            writeln('                                     Très bien!');
            lignes(1);
            writeln('                    Voici les sorts que je pourrais vous apprendre.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln(choix);

            if ((pClasse = 'Mage') or (pClasse = 'Hybride')) then
              begin
                repeat
                effacerEcran;
                lignes(3);
                writeln('                      ---------------- SORTS ----------------');
                writeln('                   Vous choisisez quelle sort? ("q" pour Quitter)');
                lignes(2);
                writeln('                           1: Boule de Feu         Or: 1,000');
                writeln('                           2: Soignage             Or: 1,000');
                writeln('                           3: Tornade              Or: 3,000');
                if nbSorts >= 4 then writeln('                           4: Onde de Choc         Or: 10,000')
                else lignes(1);
                if nbSorts >= 5 then writeln('                           5: Jet de Feu           Or: 25,000')
                else lignes(1);
                if nbSorts >= 6 then writeln('                           6: Blizzard             Or: 40,000')
                else lignes(1);
                if nbSorts >= 7 then writeln('                           7: Séisme               Or: 75,000')
                else lignes(1);
                if nbSorts >= 8 then writeln('                           8: Hydroblast           Or: 120,000')
                else lignes(1);
                if nbSorts >= 9 then writeln('                           9: Glaciation           Or: 250,000')
                else lignes(1);
                if nbSorts >= 10 then writeln('                          10: Aéroblast            Or: 750,000')
                else lignes(1);
                if nbSorts >= 11 then writeln('                          11: Feu Sacré            Or: 5,000,000')
                else lignes(1);
                writeln('                                             Votre or: ',nbor);
                lignes(1);
                writeln('                      ---------------------------------------');
                lignes(3);
                write(' Ma réponse: > ');readln(choix);
                ecrireStringRam(0, choix);
                until ((choix = '1') or (choix = '2') or (choix = '3') or ((choix = '4') and (nbSorts >= 4))
                or ((choix = '5') and (nbSorts >= 5)) or ((choix = '6') and (nbSorts >= 6)) or ((choix = '7') and (nbSorts >= 7))
                or ((choix = '8') and (nbSorts >= 8)) or ((choix = '9') and (nbSorts >= 9)) or ((choix = '10') and (nbSorts >= 10))
                or ((choix = '11') and (nbSorts >= 11)) or (choix = 'q') or (choix = 'Q'));

                if ((choix = 'q') or (choix = 'Q')) then exit;
                
                if ((choix = '1') and ((nbOr - 1000) >= 0)) then apprendreSort;
                if ((choix = '2') and ((nbOr - 1000) >= 0)) then apprendreSort;
                if ((choix = '3') and ((nbOr - 3000) >= 0)) then apprendreSort;
                if ((choix = '4') and (nbSorts >= 4) and ((nbOr - 10000) >= 0)) then apprendreSort;
                if ((choix = '5') and (nbSorts >= 5) and ((nbOr - 25000) >= 0)) then apprendreSort;
                if ((choix = '6') and (nbSorts >= 6) and ((nbOr - 40000) >= 0)) then apprendreSort;
                if ((choix = '7') and (nbSorts >= 7) and ((nbOr - 75000) >= 0)) then apprendreSort;
                if ((choix = '8') and (nbSorts >= 8) and ((nbOr - 120000) >= 0)) then apprendreSort;
                if ((choix = '9') and (nbSorts >= 9) and ((nbOr - 250000) >= 0)) then apprendreSort;
                if ((choix = '10') and (nbSorts >= 10) and ((nbOr - 750000) >= 0)) then apprendreSort;
                if ((choix = '11') and (nbSorts >= 11) and ((nbOr - 5000000) >= 0)) then apprendreSort;

                if ((choix = '1') and ((nbOr - 1000) < 0)) then pasAssezArgentSort;
                if ((choix = '2') and ((nbOr - 1000) < 0)) then pasAssezArgentSort;
                if ((choix = '3') and ((nbOr - 3000) < 0)) then pasAssezArgentSort;
                if ((choix = '4') and (nbSorts >= 4) and ((nbOr - 10000) < 0)) then pasAssezArgentSort;
                if ((choix = '5') and (nbSorts >= 5) and ((nbOr - 25000) < 0)) then pasAssezArgentSort;
                if ((choix = '6') and (nbSorts >= 6) and ((nbOr - 40000) < 0)) then pasAssezArgentSort;
                if ((choix = '7') and (nbSorts >= 7) and ((nbOr - 75000) < 0)) then pasAssezArgentSort;
                if ((choix = '8') and (nbSorts >= 8) and ((nbOr - 120000) < 0)) then pasAssezArgentSort;
                if ((choix = '9') and (nbSorts >= 9) and ((nbOr - 250000) < 0)) then pasAssezArgentSort;
                if ((choix = '10') and (nbSorts >= 10) and ((nbOr - 750000) < 0)) then pasAssezArgentSort;
                if ((choix = '11') and (nbSorts >= 11) and ((nbOr - 5000000) < 0)) then pasAssezArgentSort;

                exit;
              end;

            if (pClasse = 'Mage Noir') then
              begin
                repeat
                effacerEcran;
                lignes(3);
                writeln('                      ---------------- SORTS ----------------');
                writeln('                   Vous choisisez quelle sort? ("q" pour Quitter)');
                lignes(2);
                writeln('                           1: Boule de Sang        Or: 1,000');
                writeln('                           2: Anti-Soin            Or: 1,000');
                writeln('                           3: Ténèbres             Or: 3,000');
                if nbSorts >= 4 then writeln('                           4: Corruption           Or: 10,000')
                else lignes(1);
                if nbSorts >= 5 then writeln('                           5: Chute Noire          Or: 25,000')
                else lignes(1);
                if nbSorts >= 6 then writeln('                           6: Onde Noire           Or: 40,000')
                else lignes(1);
                if nbSorts >= 7 then writeln('                           7: Typhon Noir          Or: 75,000')
                else lignes(1);
                if nbSorts >= 8 then writeln('                           8: Boule d´Ombre        Or: 120,000')
                else lignes(1);
                if nbSorts >= 9 then writeln('                           9: Sacrifice            Or: 250,000')
                else lignes(1);
                if nbSorts >= 10 then writeln('                          10: Malédiction          Or: 750,000')
                else lignes(1);
                if nbSorts >= 11 then writeln('                          11: Feu d´Enfer          Or: 5,000,000')
                else lignes(1);
                writeln('                                             Votre or: ',nbor);
                lignes(1);
                writeln('                      ---------------------------------------');
                lignes(3);
                write(' Ma réponse: > ');readln(choix);
                ecrireStringRam(0, choix);
                until ((choix = '1') or (choix = '2') or (choix = '3') or ((choix = '4') and (nbSorts >= 4))
                or ((choix = '5') and (nbSorts >= 5)) or ((choix = '6') and (nbSorts >= 6)) or ((choix = '7') and (nbSorts >= 7))
                or ((choix = '8') and (nbSorts >= 8)) or ((choix = '9') and (nbSorts >= 9)) or ((choix = '10') and (nbSorts >= 10))
                or ((choix = '11') and (nbSorts >= 11)) or (choix = 'q') or (choix = 'Q'));

                if ((choix = 'q') or (choix = 'Q')) then exit;
                
                if ((choix = '1') and ((nbOr - 1000) >= 0)) then apprendreSort;
                if ((choix = '2') and ((nbOr - 1000) >= 0)) then apprendreSort;
                if ((choix = '3') and ((nbOr - 3000) >= 0)) then apprendreSort;
                if ((choix = '4') and (nbSorts >= 4) and ((nbOr - 10000) >= 0)) then apprendreSort;
                if ((choix = '5') and (nbSorts >= 5) and ((nbOr - 25000) >= 0)) then apprendreSort;
                if ((choix = '6') and (nbSorts >= 6) and ((nbOr - 40000) >= 0)) then apprendreSort;
                if ((choix = '7') and (nbSorts >= 7) and ((nbOr - 75000) >= 0)) then apprendreSort;
                if ((choix = '8') and (nbSorts >= 8) and ((nbOr - 120000) >= 0)) then apprendreSort;
                if ((choix = '9') and (nbSorts >= 9) and ((nbOr - 250000) >= 0)) then apprendreSort;
                if ((choix = '10') and (nbSorts >= 10) and ((nbOr - 750000) >= 0)) then apprendreSort;
                if ((choix = '11') and (nbSorts >= 11) and ((nbOr - 5000000) >= 0)) then apprendreSort;

                if ((choix = '1') and ((nbOr - 1000) < 0)) then pasAssezArgentSort;
                if ((choix = '2') and ((nbOr - 1000) < 0)) then pasAssezArgentSort;
                if ((choix = '3') and ((nbOr - 3000) < 0)) then pasAssezArgentSort;
                if ((choix = '4') and (nbSorts >= 4) and ((nbOr - 10000) < 0)) then pasAssezArgentSort;
                if ((choix = '5') and (nbSorts >= 5) and ((nbOr - 25000) < 0)) then pasAssezArgentSort;
                if ((choix = '6') and (nbSorts >= 6) and ((nbOr - 40000) < 0)) then pasAssezArgentSort;
                if ((choix = '7') and (nbSorts >= 7) and ((nbOr - 75000) < 0)) then pasAssezArgentSort;
                if ((choix = '8') and (nbSorts >= 8) and ((nbOr - 120000) < 0)) then pasAssezArgentSort;
                if ((choix = '9') and (nbSorts >= 9) and ((nbOr - 250000) < 0)) then pasAssezArgentSort;
                if ((choix = '10') and (nbSorts >= 10) and ((nbOr - 750000) < 0)) then pasAssezArgentSort;
                if ((choix = '11') and (nbSorts >= 11) and ((nbOr - 5000000) < 0)) then pasAssezArgentSort;

                exit;
              end;
          end;
      end;
  end;


procedure vampireSupreme;
  begin
    nivCombat := lireIntegerRam(1);
    pouvArmePers := lireIntegerRam(66);
    nouvArme := FALSE;
    pClasse := lireStringRam(4);
    nbOr := lireIntegerRam(56);

    if ((nivCombat >= 20) and (pouvArmePers < 60)) then nouvArme := TRUE;
    if ((nivCombat >= 30) and (pouvArmePers < 80)) then nouvArme := TRUE;
    if ((nivCombat >= 40) and (pouvArmePers < 110)) then nouvArme := TRUE;
    if ((nivCombat >= 50) and (pouvArmePers < 150)) then nouvArme := TRUE;
    if ((nivCombat >= 60) and (pouvArmePers < 200)) then nouvArme := TRUE;
    if ((nivCombat >= 70) and (pouvArmePers < 260)) then nouvArme := TRUE;
    if ((nivCombat >= 80) and (pouvArmePers < 330)) then nouvArme := TRUE;
    if ((nivCombat >= 90) and (pouvArmePers < 420)) then nouvArme := TRUE;
    if ((nivCombat >= 100) and (pouvArmePers < 600)) then nouvArme := TRUE;

    if((pClasse = 'Mage') or (pClasse = 'Rodeur') or (pClasse = 'Guerrier') or (pClasse = 'Hybride') or (pClasse = 'Mage Noir')) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      ----------- VAMPIRE SUPREME --------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Mais je ne peut pas vendre mes services à un ',pClasse,'.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if(nouvArme = FALSE) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      ----------- VAMPIRE SUPREME --------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('           Je n´ais pas de nouveau amplifications pour vous en ce moment.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if ((nouvArme = TRUE) and (pClasse = 'Vampire')) then
      begin
        repeat
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(6);
        writeln('                      ----------- VAMPIRE SUPREME --------------');
        lignes(1);
        if sexe = 'f' then writeln('                                  Bonjour madame!')
        else writeln('                                  Bonjour monsieur!');
        lignes(1);
        writeln('                  Je vois que vous-êtes niveau ',nivCombat,' en combat.');
        lignes(1);
        writeln('              Si vous voulez - je pourrais vous amplifier avec ma magie.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(2);
        writeln('       1: Oui');
        writeln('       2: Non');
        lignes(5);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '2' then exit;
        if choix = '1' then
          begin
            repeat
            if ((nivCombat >= 20) and (pouvArmePers < 60)) then prixEpee := 3000;
            if ((nivCombat >= 30) and (pouvArmePers < 80)) then prixEpee := 10000;
            if ((nivCombat >= 40) and (pouvArmePers < 110)) then prixEpee := 25000;
            if ((nivCombat >= 50) and (pouvArmePers < 150)) then prixEpee := 40000;
            if ((nivCombat >= 60) and (pouvArmePers < 200)) then prixEpee := 75000;
            if ((nivCombat >= 70) and (pouvArmePers < 260)) then prixEpee := 120000;
            if ((nivCombat >= 80) and (pouvArmePers < 330)) then prixEpee := 250000;
            if ((nivCombat >= 90) and (pouvArmePers < 420)) then prixEpee := 750000;
            if ((nivCombat >= 100) and (pouvArmePers < 600)) then prixEpee := 5000000;

            effacerEcran;
            lignes(6);
            writeln('                      ----------- VAMPIRE SUPREME --------------');
            lignes(1);
            writeln('                                     Très bien!');
            lignes(1);
            writeln('                    Si vous acceptez cette amplification, vous ferez plus ');
            lignes(1);
            writeln('                  des dégats sur vos adversaires. Ceci coûte ',prixEpee,' or.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(2);
            writeln('       1: Accepter');
            writeln('       2: Refuser');
            lignes(5);
            write(' Ma réponse: > ');readln(choix);
            until ((choix = '1') or (choix = '2'));

            if choix = '2' then exit;

            if ((choix = '1') and ((nbOr - prixEpee) >= 0)) then
              begin
                nbOr := nbOr - prixEpee;
                ecrireIntegerRam(56, nbOr);
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                          Vous acceptez l´amplification.');
                lignes(1);
                writeln('                            Il vous reste ',nbOr,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;

                if ((nivCombat >= 20) and (pouvArmePers < 60)) then pouvArmePers := 60;
                if ((nivCombat >= 30) and (pouvArmePers < 80)) then pouvArmePers := 80;
                if ((nivCombat >= 40) and (pouvArmePers < 110)) then pouvArmePers := 110;
                if ((nivCombat >= 50) and (pouvArmePers < 150)) then pouvArmePers := 150;
                if ((nivCombat >= 60) and (pouvArmePers < 200)) then pouvArmePers := 200;
                if ((nivCombat >= 70) and (pouvArmePers < 260)) then pouvArmePers := 260;
                if ((nivCombat >= 80) and (pouvArmePers < 330)) then pouvArmePers := 330;
                if ((nivCombat >= 90) and (pouvArmePers < 420)) then pouvArmePers := 420;
                if ((nivCombat >= 100) and (pouvArmePers < 600)) then pouvArmePers := 600;
                ecrireIntegerRam(66, pouvArmePers);
              end;

            if ((choix = '1') and ((nbOr - prixEpee) < 0)) then
              begin
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                           Vous n´avez pas assez d´or.');
                lignes(1);
                writeln('                  Vous avez ',nbOr,' or et il vous faut ',prixEpee,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;
              end;
          end;
      end;
  end;


procedure artisan;
  begin
    nivCombat := lireIntegerRam(1);
    pouvArmePers := lireIntegerRam(66);
    nouvArme := FALSE;
    pClasse := lireStringRam(4);
    nbOr := lireIntegerRam(56);

    if ((nivCombat >= 20) and (pouvArmePers < 60)) then nouvArme := TRUE;
    if ((nivCombat >= 30) and (pouvArmePers < 80)) then nouvArme := TRUE;
    if ((nivCombat >= 40) and (pouvArmePers < 110)) then nouvArme := TRUE;
    if ((nivCombat >= 50) and (pouvArmePers < 150)) then nouvArme := TRUE;
    if ((nivCombat >= 60) and (pouvArmePers < 200)) then nouvArme := TRUE;
    if ((nivCombat >= 70) and (pouvArmePers < 260)) then nouvArme := TRUE;
    if ((nivCombat >= 80) and (pouvArmePers < 330)) then nouvArme := TRUE;
    if ((nivCombat >= 90) and (pouvArmePers < 420)) then nouvArme := TRUE;
    if ((nivCombat >= 100) and (pouvArmePers < 600)) then nouvArme := TRUE;

    if((pClasse = 'Mage') or (pClasse = 'Vampire') or (pClasse = 'Guerrier') or (pClasse = 'Hybride') or (pClasse = 'Mage Noir')) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      --------------- ARTISAN --------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Mais je ne peut pas vendre mes services à un ',pClasse,'.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if(nouvArme = FALSE) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      --------------- ARTISAN --------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Je n´ais pas de nouveau arme pour vous en ce moment.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if ((nouvArme = TRUE) and (pClasse = 'Rodeur')) then
      begin
        repeat
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(6);
        writeln('                      --------------- ARTISAN --------------');
        lignes(1);
        if sexe = 'f' then writeln('                                  Bonjour madame!')
        else writeln('                                  Bonjour monsieur!');
        lignes(1);
        writeln('                  Je vois que vous-êtes niveau ',nivCombat,' en combat.');
        lignes(1);
        writeln('              Si vous voulez - je peut vous vendre une nouvelle arme.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(2);
        writeln('       1: Oui');
        writeln('       2: Non');
        lignes(5);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '2' then exit;
        if choix = '1' then
          begin
            repeat
            if ((nivCombat >= 20) and (pouvArmePers < 60)) then
              begin
                matiereEpee := 'Fer';
                prixEpee := 3000;
              end;
            if ((nivCombat >= 30) and (pouvArmePers < 80)) then
              begin
                matiereEpee := 'Acier';
                prixEpee := 10000;
              end;
            if ((nivCombat >= 40) and (pouvArmePers < 110)) then
              begin
                matiereEpee := 'Mithril';
                prixEpee := 25000;
              end;
            if ((nivCombat >= 50) and (pouvArmePers < 150)) then
              begin
                matiereEpee := 'Titanium';
                prixEpee := 40000;
              end;
            if ((nivCombat >= 60) and (pouvArmePers < 200)) then
              begin
                matiereEpee := 'Adamantite';
                prixEpee := 75000;
              end;
            if ((nivCombat >= 70) and (pouvArmePers < 260)) then
              begin
                matiereEpee := 'Kello';
                prixEpee := 120000;
              end;
            if ((nivCombat >= 80) and (pouvArmePers < 330)) then
              begin
                matiereEpee := 'Dragon';
                prixEpee := 250000;
              end;
            if ((nivCombat >= 90) and (pouvArmePers < 420)) then
              begin
                matiereEpee := 'Necronium';
                prixEpee := 750000;
              end;
            if ((nivCombat >= 100) and (pouvArmePers < 600)) then
              begin
                matiereEpee := 'Ultimum';
                prixEpee := 5000000;
              end;

            matiereEpeePre := 'Bronze';
            if pouvArmePers >=60 then matiereEpeePre := 'Fer';
            if pouvArmePers >=80 then matiereEpeePre := 'Acier';
            if pouvArmePers >=110 then matiereEpeePre := 'Mithril';
            if pouvArmePers >=150 then matiereEpeePre := 'Titanium';
            if pouvArmePers >=200 then matiereEpeePre := 'Adamantite';
            if pouvArmePers >=260 then matiereEpeePre := 'Kello';
            if pouvArmePers >=330 then matiereEpeePre := 'Dragon';
            if pouvArmePers >=420 then matiereEpeePre := 'Necronium';

            effacerEcran;
            lignes(6);
            writeln('                      --------------- ARTISAN --------------');
            lignes(1);
            writeln('                                     Très bien!');
            lignes(1);
            writeln('              Cette arc est faite en ',matiereEpee,' et est beaucoup plus puissant');
            lignes(1);
            writeln('                  que votre arc en ',matiereEpeePre,'. Elle coûte ',prixEpee,'.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(2);
            writeln('       1: Acheter');
            writeln('       2: Laisser');
            lignes(5);
            write(' Ma réponse: > ');readln(choix);
            until ((choix = '1') or (choix = '2'));

            if choix = '2' then exit;

            if ((choix = '1') and ((nbOr - prixEpee) >= 0)) then
              begin
                nbOr := nbOr - prixEpee;
                ecrireIntegerRam(56, nbOr);
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                           Vous achetez le nouveau arc.');
                lignes(1);
                writeln('                            Il vous reste ',nbOr,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;

                if ((nivCombat >= 20) and (pouvArmePers < 60)) then pouvArmePers := 60;
                if ((nivCombat >= 30) and (pouvArmePers < 80)) then pouvArmePers := 80;
                if ((nivCombat >= 40) and (pouvArmePers < 110)) then pouvArmePers := 110;
                if ((nivCombat >= 50) and (pouvArmePers < 150)) then pouvArmePers := 150;
                if ((nivCombat >= 60) and (pouvArmePers < 200)) then pouvArmePers := 200;
                if ((nivCombat >= 70) and (pouvArmePers < 260)) then pouvArmePers := 260;
                if ((nivCombat >= 80) and (pouvArmePers < 330)) then pouvArmePers := 330;
                if ((nivCombat >= 90) and (pouvArmePers < 420)) then pouvArmePers := 420;
                if ((nivCombat >= 100) and (pouvArmePers < 600)) then pouvArmePers := 600;
                ecrireIntegerRam(66, pouvArmePers);
              end;

            if ((choix = '1') and ((nbOr - prixEpee) < 0)) then
              begin
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                           Vous n´avez pas assez d´or.');
                lignes(1);
                writeln('                  Vous avez ',nbOr,' or et il vous faut ',prixEpee,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;
              end;
          end;
      end;
  end;


procedure forgeron;
  begin
    nivCombat := lireIntegerRam(1);
    pouvArmePers := lireIntegerRam(66);
    nouvArme := FALSE;
    pClasse := lireStringRam(4);
    nbOr := lireIntegerRam(56);

    if ((nivCombat >= 20) and (pouvArmePers < 60)) then nouvArme := TRUE;
    if ((nivCombat >= 30) and (pouvArmePers < 80)) then nouvArme := TRUE;
    if ((nivCombat >= 40) and (pouvArmePers < 110)) then nouvArme := TRUE;
    if ((nivCombat >= 50) and (pouvArmePers < 150)) then nouvArme := TRUE;
    if ((nivCombat >= 60) and (pouvArmePers < 200)) then nouvArme := TRUE;
    if ((nivCombat >= 70) and (pouvArmePers < 260)) then nouvArme := TRUE;
    if ((nivCombat >= 80) and (pouvArmePers < 330)) then nouvArme := TRUE;
    if ((nivCombat >= 90) and (pouvArmePers < 420)) then nouvArme := TRUE;
    if ((nivCombat >= 100) and (pouvArmePers < 600)) then nouvArme := TRUE;

    if((pClasse = 'Mage') or (pClasse = 'Vampire') or (pClasse = 'Rodeur') or (pClasse = 'Mage Noir')) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      --------------- FORGERON -------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Mais je ne peut pas vendre mes services à un ',pClasse,'.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if(nouvArme = FALSE) then
      begin
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(8);
        writeln('                      --------------- FORGERON -------------');
        lignes(1);
        if sexe = 'f' then writeln('                              Excusez-moi madame.')
        else writeln('                               Excusez-moi monsieur.');
        lignes(1);
        writeln('               Je n´ais pas de nouveau arme pour vous en ce moment.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if ((nouvArme = TRUE) and ((pClasse = 'Guerrier') or (pClasse = 'Hybride'))) then
      begin
        repeat
        sexe := lireStringRam(2);
        effacerEcran;
        lignes(6);
        writeln('                      --------------- FORGERON -------------');
        lignes(1);
        if sexe = 'f' then writeln('                                  Bonjour madame!')
        else writeln('                                  Bonjour monsieur!');
        lignes(1);
        writeln('                  Je vois que vous-êtes niveau ',nivCombat,' en combat.');
        lignes(1);
        writeln('              Si vous voulez - je peut vous vendre une nouvelle arme.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(2);
        writeln('       1: Oui');
        writeln('       2: Non');
        lignes(5);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '2' then exit;
        if choix = '1' then
          begin
            repeat
            if ((nivCombat >= 20) and (pouvArmePers < 60)) then
              begin
                matiereEpee := 'Fer';
                prixEpee := 3000;
              end;
            if ((nivCombat >= 30) and (pouvArmePers < 80)) then
              begin
                matiereEpee := 'Acier';
                prixEpee := 10000;
              end;
            if ((nivCombat >= 40) and (pouvArmePers < 110)) then
              begin
                matiereEpee := 'Mithril';
                prixEpee := 25000;
              end;
            if ((nivCombat >= 50) and (pouvArmePers < 150)) then
              begin
                matiereEpee := 'Titanium';
                prixEpee := 40000;
              end;
            if ((nivCombat >= 60) and (pouvArmePers < 200)) then
              begin
                matiereEpee := 'Adamantite';
                prixEpee := 75000;
              end;
            if ((nivCombat >= 70) and (pouvArmePers < 260)) then
              begin
                matiereEpee := 'Kello';
                prixEpee := 120000;
              end;
            if ((nivCombat >= 80) and (pouvArmePers < 330)) then
              begin
                matiereEpee := 'Dragon';
                prixEpee := 250000;
              end;
            if ((nivCombat >= 90) and (pouvArmePers < 420)) then
              begin
                matiereEpee := 'Necronium';
                prixEpee := 750000;
              end;
            if ((nivCombat >= 100) and (pouvArmePers < 600)) then
              begin
                matiereEpee := 'Ultimum';
                prixEpee := 5000000;
              end;

            matiereEpeePre := 'Bronze';
            if pouvArmePers >=60 then matiereEpeePre := 'Fer';
            if pouvArmePers >=80 then matiereEpeePre := 'Acier';
            if pouvArmePers >=110 then matiereEpeePre := 'Mithril';
            if pouvArmePers >=150 then matiereEpeePre := 'Titanium';
            if pouvArmePers >=200 then matiereEpeePre := 'Adamantite';
            if pouvArmePers >=260 then matiereEpeePre := 'Kello';
            if pouvArmePers >=330 then matiereEpeePre := 'Dragon';
            if pouvArmePers >=420 then matiereEpeePre := 'Necronium';

            effacerEcran;
            lignes(6);
            writeln('                      --------------- FORGERON -------------');
            lignes(1);
            writeln('                                     Très bien!');
            lignes(1);
            writeln('              Cette épée est faite en ',matiereEpee,' et est beaucoup plus puissant');
            lignes(1);
            writeln('                  que votre épée en ',matiereEpeePre,'. Elle coûte ',prixEpee,'.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(2);
            writeln('       1: Acheter');
            writeln('       2: Laisser');
            lignes(5);
            write(' Ma réponse: > ');readln(choix);
            until ((choix = '1') or (choix = '2'));

            if choix = '2' then exit;

            if ((choix = '1') and ((nbOr - prixEpee) >= 0)) then
              begin
                nbOr := nbOr - prixEpee;
                ecrireIntegerRam(56, nbOr);
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                           Vous achetez le nouveau épée.');
                lignes(1);
                writeln('                            Il vous reste ',nbOr,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;

                if ((nivCombat >= 20) and (pouvArmePers < 60)) then pouvArmePers := 60;
                if ((nivCombat >= 30) and (pouvArmePers < 80)) then pouvArmePers := 80;
                if ((nivCombat >= 40) and (pouvArmePers < 110)) then pouvArmePers := 110;
                if ((nivCombat >= 50) and (pouvArmePers < 150)) then pouvArmePers := 150;
                if ((nivCombat >= 60) and (pouvArmePers < 200)) then pouvArmePers := 200;
                if ((nivCombat >= 70) and (pouvArmePers < 260)) then pouvArmePers := 260;
                if ((nivCombat >= 80) and (pouvArmePers < 330)) then pouvArmePers := 330;
                if ((nivCombat >= 90) and (pouvArmePers < 420)) then pouvArmePers := 420;
                if ((nivCombat >= 100) and (pouvArmePers < 600)) then pouvArmePers := 600;
                ecrireIntegerRam(66, pouvArmePers);
              end;

            if ((choix = '1') and ((nbOr - prixEpee) < 0)) then
              begin
                effacerEcran;
                lignes(8);
                writeln('                      -------------------------------------');
                lignes(1);
                writeln('                           Vous n´avez pas assez d´or.');
                lignes(1);
                writeln('                  Vous avez ',nbOr,' or et il vous faut ',prixEpee,' or.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;
              end;
          end;
      end;
  end;


procedure bernard;
  begin
    effacerEcran;
    lignes(8);
    writeln('                      --------------- BERNARD -------------');
    lignes(1);
    writeln('                   J´ai entendu que dans l´auberge Bob et Hassan');
    lignes(1);
    writeln('                   sont à la recherche des aventuriers courageux.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;


procedure gilles;
  begin
    effacerEcran;
    lignes(8);
    writeln('                      ---------------- GILLES --------------');
    lignes(1);
    writeln('                 Fait gaffe dans la forêt noire! Il y a des');
    lignes(1);
    writeln('         vampires et il faut avoir de la chance pour retrouver la route.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;


procedure richard;
  begin
    effacerEcran;
    lignes(8);
    writeln('                      --------------- RICHARD --------------');
    lignes(1);
    writeln('         Si t´as besoin d´être soigné, utilise le lit dans l´auberge!');
    lignes(1);
    writeln('    Sinon tu peut aussi acheter des potions pour te soigner n´importe quand.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;


procedure aventurierM2;
  begin
    effacerEcran;
    lignes(8);
    writeln('                      --------- AVENTURIER SYMPA -----------');
    lignes(1);
    writeln('                       Salut, t´as besoin d´un peu d´aide?');
    lignes(1);
    writeln('                       Tiens.. Je te soigne avec ma magie.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
    effacerEcran;
    lignes(8);
    writeln('                      --------- AVENTURIER SYMPA -----------');
    lignes(1);
    writeln('                                   Courage!');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(11);
    write(' Ma réponse: > ');readln;
    pvPersActuel := calculPvPersMax;
    ecrireIntegerRam(9, pvPersActuel);
    ecrireStringRam(15, '');
  end;


procedure hassan;
  begin
    queteJimmy := lireIntegerRam(78);
    jimmyMort := lireIntegerRam(79);
    recomJimmy := lireIntegerRam(80);

    if (queteJimmy = 0) then
      begin
        repeat
          sexe := lireStringRam(2);
          effacerEcran;
          lignes(8);
          writeln('                      -------------- HASSAN ----------------');
          lignes(1);
          if sexe = 'f' then writeln('                               Salut brave femme!')
          else writeln('                               Salut brave homme!');
          lignes(1);
          writeln('                       Pourrais-tu me rendre une service?');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(2);
          writeln('       1: Oui');
          writeln('       2: Non');
          lignes(5);
          write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '1' then
          begin
            repeat
              effacerEcran;
              lignes(8);
              writeln('                      -------------- HASSAN ----------------');
              lignes(1);
              writeln('            Il s´agit d´un certain Jimmy qui me ménace et vole mes objets.');
              lignes(1);
              writeln('                 Pourrais-tu lui apprendre une leçon de justice?');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(2);
              writeln('   Voulez-vous démarrer la quete "Jimmy payback time!"?');
              writeln('       1: Oui');
              writeln('       2: Non');
              lignes(4);
              write(' Ma réponse: > ');readln(choix);
            until ((choix = '1') or (choix = '2'));

            if choix = '1' then
              begin
                effacerEcran;
                lignes(8);
                writeln('                      -------------- HASSAN ----------------');
                lignes(1);
                writeln('                         Merci a toi! Je pense que Jimmy');
                lignes(1);
                writeln('                    se trouve quelque part dans la forêt noire');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;
                ecrireIntegerRam(78, 1);
                exit;
              end;

            if choix = '2' then
              begin
                effacerEcran;
                lignes(9);
                writeln('                      -------------- HASSAN ----------------');
                lignes(1);
                writeln('                                   Dommage..');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(10);
                write(' Ma réponse: > ');readln;
                exit;
              end;
          end;

        if choix = '2' then
          begin
            effacerEcran;
            lignes(9);
            writeln('                      -------------- HASSAN ----------------');
            lignes(1);
            writeln('                                   Dommage..');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(10);
            write(' Ma réponse: > ');readln;
          end;
      end;

    if ((queteJimmy = 1) and (jimmyMort = 0)) then
      begin
        repeat
          effacerEcran;
          lignes(8);
          writeln('                      -------------- HASSAN ----------------');
          lignes(1);
          writeln('                               Salut brave homme!');
          lignes(1);
          writeln('                              A tu trouvé Jimmy ?');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(2);
          writeln('       1: Oui');
          writeln('       2: Non');
          lignes(5);
          write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2'));

        if choix = '1' then
          begin
            effacerEcran;
            lignes(8);
            writeln('                      -------------- HASSAN ----------------');
            lignes(1);
            writeln('                               Tu attend quoi?');
            lignes(1);
            writeln('                        Va lui apprendre une lecon alors !');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln;
          end;

        if choix = '2' then
          begin
            effacerEcran;
            lignes(8);
            writeln('                      -------------- HASSAN ----------------');
            lignes(1);
            writeln('                           Je pense que Jimmy se trouve');
            lignes(1);
            writeln('                         quelquepart dans la forêt noire..');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln;
          end;
    end;

    if ((jimmyMort = 1) and (recomJimmy = 0)) then
      begin
            effacerEcran;
            lignes(8);
            writeln('                      -------------- HASSAN ----------------');
            lignes(1);
            writeln('                           Alors tu l´as tué? OUI??!');
            lignes(1);
            writeln('                          HAHA parfait merci beaucoup!');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln;

            effacerEcran;
            lignes(8);
            writeln('                      -------------- HASSAN ----------------');
            lignes(1);
            writeln('                      Finalement je n´aurais plus de problèmes!');
            lignes(1);
            writeln('                   Merci! Je te récompense avec 15,000 pièces d´or!');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln;
            nbOr := lireIntegerRam(56);
            nbOr := nbOr + 15000;
            ecrireIntegerRam(56, nbOr);
            ecrireIntegerRam(80, 1);
      end;

    if (recomJimmy = 1) then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      -------------- HASSAN ----------------');
        lignes(1);
        writeln('                                 Merci encore!');
        lignes(1);
        writeln('                J´espère que t´utilise bien tes 15,000 pièces d´or!');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
      end;
  end;


procedure jimmy;
  begin
    queteJimmy := lireIntegerRam(78);
    nivCombat := lireIntegerRam(1);
    repeat
    effacerEcran;
    lignes(8);
    writeln('                      -------------- JIMMY -----------------');
    lignes(1);
    writeln('                                  Salut toi?');
    lignes(1);
    writeln('                       Qu´est ce qu´il y a? T´as une problème?');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(2);
    writeln('       1: Oui');
    writeln('       2: Non..');
    writeln('       3: Tu fait quoi dans le Monde de Kello?');
    if queteJimmy = 0 then lignes(1) else
    writeln('       4: C´est mal de voler, et tu va payer!.');
    lignes(3);
    write(' Ma réponse: > ');readln(choix);
    until ((choix = '1') or (choix = '2') or (choix = '3') or ((choix = '4') and (queteJimmy = 1)));

    if choix = '1' then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      -------------- JIMMY -----------------');
        lignes(1);
        writeln('                                    Dégage.');
        lignes(1);
        writeln('                   J´ai pas le temps pour des clowns comme toi.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
      end;

    if choix = '2' then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      -------------- JIMMY -----------------');
        lignes(1);
        writeln('                                    Dégage.');
        lignes(1);
        writeln('                       J´ai des choses importantes à faire.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
      end;

    if choix = '3' then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      -------------- JIMMY -----------------');
        lignes(1);
        writeln('                            Rien de ce qui te concerne');
        lignes(1);
        writeln('                        Occupe toi de ta vie premièrement.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
      end;

    if ((choix = '4') and (queteJimmy = 1)) then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      -------------- JIMMY -----------------');
        lignes(1);
        writeln('                                  HAHA ah ouais?');
        lignes(1);
        writeln('                      Tu te crois grand toi! Vazy tu m´énerve.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln;
        ecrireStringRam(13, 'Jimmy');
        ecrireStringRam(14, '');
        ecrireIntegerRam(48, 38);
        ecrireIntegerRam(65, 10);
        ecrireStringRam(9, 'Mage Noir');
        ecrireStringRam(21, 'Boule d´ombre');
        ecrireStringRam(22, 'Corruption');
        ecrireStringRam(23, 'Anti-Soin');
        ecrireStringRam(24, 'Ténèbres');
        demarCombat;
      end;
  end;


procedure bob;
  begin
    repeat
      nom := lireStringRam(1);
      nivMinier := lireIntegerRam(2);
      queteBob := lireIntegerRam(35);

      effacerEcran;
      lignes(8);
      writeln('                      ---------------- BOB -----------------');
      lignes(1);
      writeln('                          Hum. Salut, T´est qui déja?');
      lignes(1);
      writeln('                    Ah oui c´est vrai. T´est le "fameux" ',nom);
      lignes(1);
      writeln('                      -------------------------------------');
      lignes(2);
      writeln('       1: Suis-je fameux?');
      if queteBob = 0 then writeln('       2: Vous avez une quête pour moi?');
      if queteBob = 1 then writeln('       2: Je viens te donner des minéraux de fer.');
      if queteBob = 2 then writeln('       2: J´ai des autres minéraux pour toi.');
      writeln('       3: Partir');
      lignes(4);
      write(' Ma réponse: > ');readln(choix);
    until ((choix = '1') or (choix = '2') or (choix = '3'));

    if choix = '1' then
      begin
        effacerEcran;
        lignes(8);
        writeln('                      --------------------------------------');
        lignes(1);
        writeln('                          Bob semble vous avoir ignoré.');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(11);
        write(' Ma réponse: > ');readln;
        exit;
      end;

    if choix = '3' then exit;


    if ((choix = '2') and (queteBob = 0)) then
      begin
          effacerEcran;
          lignes(8);
          writeln('                      ---------------- BOB -----------------');
          lignes(1);
          writeln('                      Hum. Ca dépend de ton niveau de minier.');
          lignes(1);
          writeln('                              Hmm, tu est niveau ',nivMinier,'..');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(9);
          write(' Ma réponse: > ');readln;

    if nivMinier < 10 then
       begin
          effacerEcran;
          lignes(8);
          writeln('                      ---------------- BOB -----------------');
          lignes(1);
          writeln('                           Pff t´est encore un débutant.');
          lignes(1);
          writeln('                 Reviens plus tard quand t´aurais au moins niveau 10.');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(9);
          write(' Ma réponse: > ');readln;
          exit;
        end;

    if nivMinier >= 10 then
       begin
          repeat
          effacerEcran;
          lignes(8);
          writeln('                      ---------------- BOB -----------------');
          lignes(1);
          writeln('                  Mouais ca va, c´est à peu près ca que je cherche.');
          lignes(1);
          writeln('        J´ai une quête pour toi: Pourrais tu m´apporter 20 minéraux de fer?');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(2);
          writeln('   Voulez-vous démarrer la quête "Rampage de minage"?');
          writeln('       1: Oui');
          writeln('       2: Non');
          lignes(4);
          write(' Ma réponse: > ');readln(choix);
          until ((choix = '1') or (choix = '2'));

          if choix = '2' then exit;
          if choix = '1' then
            begin
              ferRestantQuete := 20;
              ecrireIntegerRam(81, ferRestantQuete);
              effacerEcran;
              lignes(8);
              writeln('                      ---------------- BOB -----------------');
              lignes(1);
              writeln('                                   Très bien.');
              lignes(1);
              writeln('                   Reviens quand t´aurais les 20 minéraux de fer.');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(9);
              write(' Ma réponse: > ');readln;
              queteBob := 1;
              ecrireIntegerRam(35, queteBob);
              exit;
            end;
        end;
      end;
    if ((choix = '2') and (queteBob = 1)) then
    repeat
    interfaceSac;
    choix := lireStringRam(0);
    objetChoisi := '';
    pClasse := lireStringRam(4);
      if ((pClasse = 'Guerrier') or (pClasse = 'Hybride')) then nbObjetMax := 10
        else nbObjetMax := 6;

      if choix = '1' then objetChoisi := objet1;
      if choix = '2' then objetChoisi := objet2;
      if choix = '3' then objetChoisi := objet3;
      if choix = '4' then objetChoisi := objet4;
      if choix = '5' then objetChoisi := objet5;
      if choix = '6' then objetChoisi := objet6;
      if ((choix = '7') and (nbObjetMax = 10)) then objetChoisi := objet7;
      if ((choix = '8') and (nbObjetMax = 10)) then objetChoisi := objet8;
      if ((choix = '9') and (nbObjetMax = 10)) then objetChoisi := objet9;
      if ((choix = '10') and (nbObjetMax = 10)) then objetChoisi := objet10;
      if ((choix = 'q') or (choix = 'Q')) then exit;

      ecrireStringRam(33, objet1);
      ecrireStringRam(34, objet2);
      ecrireStringRam(35, objet3);
      ecrireStringRam(36, objet4);
      ecrireStringRam(37, objet5);
      ecrireStringRam(38, objet6);
      ecrireStringRam(39, objet7);
      ecrireStringRam(40, objet8);
      ecrireStringRam(41, objet9);
      ecrireStringRam(42, objet10);

    if objetChoisi = 'Fer' then
      begin
        ferRestantQuete := ferRestantQuete - 1;
        ecrireIntegerRam(81, ferRestantQuete);
        if ferRestantQuete > 0 then
          begin
            effacerEcran;
            lignes(8);
            writeln('                      ---------------- BOB -----------------');
            lignes(1);
            writeln('                                 Merci beaucoup.');
            lignes(1);
            writeln('                          Il te reste ',ferRestantQuete,' minéraux de fer.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln;

            if choix = '1' then objet1 := '';
            if choix = '2' then objet2 := '';
            if choix = '3' then objet3 := '';
            if choix = '4' then objet4 := '';
            if choix = '5' then objet5 := '';
            if choix = '6' then objet6 := '';
            if ((choix = '7') and (nbObjetMax = 10)) then objet7 := '';
            if ((choix = '8') and (nbObjetMax = 10)) then objet8 := '';
            if ((choix = '9') and (nbObjetMax = 10)) then objet9 := '';
            if ((choix = '10') and (nbObjetMax = 10)) then objet10 := '';
          end
      end;
    if objetChoisi <> 'Fer' then
        begin
          effacerEcran;
          lignes(8);
          writeln('                      ---------------- BOB -----------------');
          lignes(1);
          writeln('                                        ?');
          lignes(1);
          writeln('                             Ce n´est pas du fer ca.');
          lignes(1);
          writeln('                      -------------------------------------');
          lignes(9);
          write(' Ma réponse: > ');readln;
        end;
        until ((ferRestantQuete <= 0) or (choix = 'q') or (choix = 'Q'));

        if ((ferRestantQuete <= 0) and (queteBob <> 2)) then
            begin
              effacerEcran;
              lignes(8);
              writeln('                      ---------------- BOB -----------------');
              lignes(1);
              writeln('                                 Merci beaucoup.');
              lignes(1);
              writeln('                     Tu m´as apporté tous-ce qu´il me fallait.');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(9);
              write(' Ma réponse: > ');readln;

              repeat
              effacerEcran;
              lignes(8);
              writeln('                      ---------------- BOB -----------------');
              lignes(1);
              writeln('                        Tu préfère quoi comme récompense?');
              lignes(1);
              writeln('                          De l´or ou des connaissances?');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(2);
              writeln('       1: Or');
              writeln('       2: Connaissances');
              lignes(5);
              write(' Ma réponse: > ');readln(choix);
              queteBob := 2;
              ecrireIntegerRam(35, queteBob);
              until ((choix = '1') or (choix = '2'));

              if choix = '1' then
                begin
                  effacerEcran;
                  lignes(8);
                  writeln('                      ---------------- BOB -----------------');
                  lignes(1);
                  writeln('                              D´accord très bien');
                  lignes(1);
                  writeln('                           Voici 100,000 pièces d´or.');
                  lignes(1);
                  writeln('                      -------------------------------------');
                  lignes(9);
                  write(' Ma réponse: > ');readln;

                  nbOr := lireIntegerRam(56);
                  nbOr := nbOr + 100000;
                  ecrireIntegerRam(56, nbOr);
                end;

              if choix = '2' then
                begin
                  effacerEcran;
                  lignes(8);
                  writeln('                      ---------------- BOB -----------------');
                  lignes(1);
                  writeln('                              D´accord très bien');
                  lignes(1);
                  writeln('                             Maintenant écoute-moi.');
                  lignes(1);
                  writeln('                      -------------------------------------');
                  lignes(9);
                  write(' Ma réponse: > ');readln;

                  xpMinier := lireIntegerRam(29);
                  xpMinier := xpMinier - 150000;
                  ecrireIntegerRam(29, xpMinier);
                  if xpMinier < 0 then monterNivMinier;

                  effacerEcran;
                  lignes(8);
                  writeln('                      --------------------------------------');
                  lignes(1);
                  writeln('                     Les connaisances de Bob sont incroyables!');
                  lignes(1);
                  writeln('                        Vous gagnez 150,000xp en Minier.');
                  lignes(1);
                  writeln('                      -------------------------------------');
                  lignes(9);
                  write(' Ma réponse: > ');readln;

                  msgNiv := lireIntegerRam(55);
                  if msgNiv = 1 then
                    begin
                      effacerEcran;
                      lignes(9);
                      writeln('                      --------------------------------------');
                      lignes(1);
                      writeln('                        Vous êtes maintenant niveau ',nivMinier);
                      lignes(1);
                      writeln('                      -------------------------------------');
                      lignes(10);
                      write(' Ma réponse: > ');readln;
                    end;
                end;
              effacerEcran;
              lignes(8);
              writeln('                      ---------------- BOB -----------------');
              lignes(1);
              writeln('                 Si t´as d´autres minéraux je veut bien les prendre.');
              lignes(1);
              writeln('                      Je te récompense avec des connaissances.');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(9);
              write(' Ma réponse: > ');readln;
              exit;
            end;
    if ((choix = '2') and (queteBob = 2)) then
      begin
        repeat
        interfaceSac;
        choix := lireStringRam(0);
        objetChoisi := '';
        pClasse := lireStringRam(4);
          if ((pClasse = 'Guerrier') or (pClasse = 'Hybride')) then nbObjetMax := 10
            else nbObjetMax := 6;

          if choix = '1' then objetChoisi := objet1;
          if choix = '2' then objetChoisi := objet2;
          if choix = '3' then objetChoisi := objet3;
          if choix = '4' then objetChoisi := objet4;
          if choix = '5' then objetChoisi := objet5;
          if choix = '6' then objetChoisi := objet6;
          if ((choix = '7') and (nbObjetMax = 10)) then objetChoisi := objet7;
          if ((choix = '8') and (nbObjetMax = 10)) then objetChoisi := objet8;
          if ((choix = '9') and (nbObjetMax = 10)) then objetChoisi := objet9;
          if ((choix = '10') and (nbObjetMax = 10)) then objetChoisi := objet10;
          if ((choix = 'q') or (choix = 'Q')) then exit;

          if choix = '1' then objet1 := '';
          if choix = '2' then objet2 := '';
          if choix = '3' then objet3 := '';
          if choix = '4' then objet4 := '';
          if choix = '5' then objet5 := '';
          if choix = '6' then objet6 := '';
          if ((choix = '7') and (nbObjetMax = 10)) then objet7 := '';
          if ((choix = '8') and (nbObjetMax = 10)) then objet8 := '';
          if ((choix = '9') and (nbObjetMax = 10)) then objet9 := '';
          if ((choix = '10') and (nbObjetMax = 10)) then objet10 := '';

          ecrireStringRam(33, objet1);
          ecrireStringRam(34, objet2);
          ecrireStringRam(35, objet3);
          ecrireStringRam(36, objet4);
          ecrireStringRam(37, objet5);
          ecrireStringRam(38, objet6);
          ecrireStringRam(39, objet7);
          ecrireStringRam(40, objet8);
          ecrireStringRam(41, objet9);
          ecrireStringRam(42, objet10);

          if ((objetChoisi = 'Argile') or (objetChoisi = 'Etain') or (objetChoisi = 'Cuivre') or
          (objetChoisi = 'Fer') or (objetChoisi = 'Charbon') or (objetChoisi = 'Or') or
          (objetChoisi = 'Adamantite') or (objetChoisi = 'Ultimum')) then
            begin
              if objetChoisi = 'Argile' then valXp := 10;
              if objetChoisi = 'Etain' then valXp := 70;
              if objetChoisi = 'Cuivre' then valXp := 70;
              if objetChoisi = 'Fer' then valXp := 140;
              if objetChoisi = 'Charbon' then valXp := 300;
              if objetChoisi = 'Or' then valXp := 800;
              if objetChoisi = 'Adamantite' then valXp := 5000;
              if objetChoisi = 'Ultimum' then valXp := 25000;

              xpMinier := lireIntegerRam(29);
              xpMinier := xpMinier - valXp;
              if xpMinier < 0 then monterNivMinier else msgNiv := 0;
              ecrireIntegerRam(29, xpMinier);

              effacerEcran;
              lignes(8);
              writeln('                      --------------------------------------');
              lignes(1);
              writeln('                     Les connaisances de Bob sont incroyables!');
              lignes(1);
              writeln('                           Vous gagnez ',valXp,' en Minier.');
              lignes(1);
              writeln('                      -------------------------------------');
              lignes(9);
              write(' Ma réponse: > ');readln;

              msgNiv := lireIntegerRam(55);
              if msgNiv = 1 then
                begin
                  effacerEcran;
                  lignes(9);
                  writeln('                      --------------------------------------');
                  lignes(1);
                  writeln('                        Vous êtes maintenant niveau ',nivMinier);
                  lignes(1);
                  writeln('                      -------------------------------------');
                  lignes(10);
                  write(' Ma réponse: > ');readln;
                end;
            end else
              begin
                effacerEcran;
                lignes(8);
                writeln('                      ---------------- BOB -----------------');
                lignes(1);
                writeln('                                        ?');
                lignes(1);
                writeln('                           Ce n´est pas ce que je cherche.');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;
              end;
        until ((choix = 'q') or (choix = 'Q'));
      end;
  end;


procedure vendeur;
  begin
    repeat
    nbOr := lireIntegerRam(56);
    objetChoisi := '';
    objet1 := lireStringRam(33);
    objet2 := lireStringRam(34);
    objet3 := lireStringRam(35);
    objet4 := lireStringRam(36);
    objet5 := lireStringRam(37);
    objet6 := lireStringRam(38);
    objet7 := lireStringRam(39);
    objet8 := lireStringRam(40);
    objet9 := lireStringRam(41);
    objet10 := lireStringRam(42);
    pClasse := lireStringRam(4);

    if ((pClasse = 'Guerrier') or (pClasse = 'Hybride')) then nbObjetMax := 10
    else nbObjetMax := 6;

    effacerEcran;
    lignes(8);
    writeln('                      -------------- VENDEUR ---------------');
    lignes(1);
    writeln('                            Bienvenu dans notre shop!');
    lignes(1);
    writeln('                       Voulez-vous acheter ou vendre un objet?');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(2);
    writeln('       1: Acheter');
    writeln('       2: Vendre');
    writeln('       3: Rien faire');
    lignes(4);
    write(' Ma réponse: > ');readln(choix);
    until ((choix = '1') or (choix = '2') or (choix = '3'));

    if choix = '1' then
      begin
        effacerEcran;
        lignes(4);
        writeln('                      -------------- VENDEUR ---------------');
        writeln('                            Nous vendons ces objets:');
        lignes(1);
        writeln('                       1: Potion                       Or: 200');
        writeln('                       2: Super Potion                 Or: 800');
        writeln('                       3: Mega Potion                  Or: 3200');
        writeln('                       4: Livre de Combat              Or: 7500');
        writeln('                       5: Tribulus Terrestris          Or: 2000');
        writeln('                       6: Propolis                     Or: 2000');
        writeln('                       7: Racine de Ginseng            Or: 2000');
        writeln('                       8: Oméga-3                      Or: 2000');
        writeln('                       (Autre touche pour partir)');
        lignes(1);
        writeln('                                                Votre or: ',nbOr);
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(4);
        write(' Ma réponse: > ');readln(choix);

        if ((choix = '1') and (nbOr - 200 < 0)) then vendeurPasAssez;
        if ((choix = '2') and (nbOr - 800 < 0)) then vendeurPasAssez;
        if ((choix = '3') and (nbOr - 3200 < 0)) then vendeurPasAssez;
        if ((choix = '4') and (nbOr - 7500 < 0)) then vendeurPasAssez;
        if ((choix = '5') and (nbOr - 2000 < 0)) then vendeurPasAssez;
        if ((choix = '6') and (nbOr - 2000 < 0)) then vendeurPasAssez;
        if ((choix = '7') and (nbOr - 2000 < 0)) then vendeurPasAssez;
        if ((choix = '8') and (nbOr - 2000 < 0)) then vendeurPasAssez;

        if choix = '1' then objetChoisi := 'Potion';
        if choix = '2' then objetChoisi := 'Super Potion';
        if choix = '3' then objetChoisi := 'Mega Potion';
        if choix = '4' then objetChoisi := 'Livre de Combat';
        if choix = '5' then objetChoisi := 'Tribulus Terrestris';
        if choix = '6' then objetChoisi := 'Propolis';
        if choix = '7' then objetChoisi := 'Racine de Ginseng';
        if choix = '8' then objetChoisi := 'Oméga-3';

        if choix = '1' then nbOr := nbOr - 200;
        if choix = '2' then nbOr := nbOr - 800;
        if choix = '3' then nbOr := nbOr - 3200;
        if choix = '4' then nbOr := nbOr - 7500;
        if choix = '5' then nbOr := nbOr - 2000;
        if choix = '6' then nbOr := nbOr - 2000;
        if choix = '7' then nbOr := nbOr - 2000;
        if choix = '8' then nbOr := nbOr - 2000;

        if (objetChoisi <> '') then
          begin
            effacerEcran;
            lignes(8);
            writeln('                      --------------------------------------');
            lignes(1);
            writeln('                        Vous venez d´acheter: ',objetChoisi,'!');
            lignes(1);
            writeln('                        Il vous reste ',nbOr,' pièces d´or.');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln(choix);

            if objet1 = '' then objet1 := objetChoisi
            else if objet2 = '' then objet2 := objetChoisi
            else if objet3 = '' then objet3 := objetChoisi
            else if objet4 = '' then objet4 := objetChoisi
            else if objet5 = '' then objet5 := objetChoisi
            else if objet6 = '' then objet6 := objetChoisi
            else if ((objet7 = '') and (nbObjetMax = 10)) then objet7 := objetChoisi
            else if ((objet8 = '') and (nbObjetMax = 10)) then objet8 := objetChoisi
            else if ((objet9 = '') and (nbObjetMax = 10)) then objet9 := objetChoisi
            else if ((objet10 = '') and (nbObjetMax = 10)) then objet10 := objetChoisi
            else
              begin
                lignes(8);
                writeln('                      --------------------------------------');
                lignes(1);
                writeln('                   Vous n´avez plus de place dans votre sac!');
                lignes(1);
                writeln('                Choissisez une objet a jetter (Autre touche: Quitter)');
                lignes(1);
                writeln('                      -------------------------------------');
                lignes(9);
                write(' Ma réponse: > ');readln;

                interfaceSac;
                choix := lireStringRam(0);
                if choix = '1' then objet1 := objetChoisi
                else if choix = '2' then objet2 := objetChoisi
                else if choix = '3' then objet3 := objetChoisi
                else if choix = '4' then objet4 := objetChoisi
                else if choix = '5' then objet5 := objetChoisi
                else if choix = '6' then objet6 := objetChoisi
                else if ((choix = '7') and (nbObjetMax = 10)) then objet7 := objetChoisi
                else if ((choix = '8') and (nbObjetMax = 10)) then objet8 := objetChoisi
                else if ((choix = '9') and (nbObjetMax = 10)) then objet9 := objetChoisi
                else if ((choix = '10') and (nbObjetMax = 10)) then objet10 := objetChoisi
                else
                  begin
                    if objetChoisi = 'Potion' then nbOr := nbOr + 200;
                    if objetChoisi = 'Super Potion' then nbOr := nbOr + 800;
                    if objetChoisi = 'Mega Potion' then nbOr := nbOr + 3200;
                    if objetChoisi = 'Livre de Combat' then nbOr := nbOr + 7500;
                    if objetChoisi = 'Tribulus Terrestris' then nbOr := nbOr + 2000;
                    if objetChoisi = 'Propolis' then nbOr := nbOr + 2000;
                    if objetChoisi = 'Racine de Ginseng' then nbOr := nbOr + 2000;
                    if objetChoisi = 'Oméga-3' then nbOr := nbOr + 2000;
                  end;
              end;
          end;

          choix := '';
      end;

    if choix = '2' then
      begin
        repeat
        interfaceSac;
        choix := lireStringRam(0);
        objetChoisi := '';

        if choix = '1' then objetChoisi := objet1;
        if choix = '2' then objetChoisi := objet2;
        if choix = '3' then objetChoisi := objet3;
        if choix = '4' then objetChoisi := objet4;
        if choix = '5' then objetChoisi := objet5;
        if choix = '6' then objetChoisi := objet6;
        if ((choix = '7') and (nbObjetMax = 10)) then objetChoisi := objet7;
        if ((choix = '8') and (nbObjetMax = 10)) then objetChoisi := objet8;
        if ((choix = '9') and (nbObjetMax = 10)) then objetChoisi := objet9;
        if ((choix = '10') and (nbObjetMax = 10)) then objetChoisi := objet10;
        if ((choix = 'q') or (choix = 'Q')) then exit;
        
        idObjet := choix;

        if objetChoisi = 'Potion' then prixVendre := 100;
        if objetChoisi = 'Super Potion' then prixVendre := 400;
        if objetChoisi = 'Mega Potion' then prixVendre := 1600;
        if objetChoisi = 'Livre de Combat' then prixVendre := 3750;
        if objetChoisi = 'Tribulus Terrestris' then prixVendre := 1000;
        if objetChoisi = 'Probolis' then prixVendre := 1000;
        if objetChoisi = 'Racine de Ginseng' then prixVendre := 1000;
        if objetChoisi = 'Oméga-3' then prixVendre := 1000;
        if objetChoisi = 'Argile' then prixVendre := 20;
        if objetChoisi = 'Etain' then prixVendre := 140;
        if objetChoisi = 'Cuivre' then prixVendre := 140;
        if objetChoisi = 'Fer' then prixVendre := 280;
        if objetChoisi = 'Charbon' then prixVendre := 600;
        if objetChoisi = 'Or' then prixVendre := 1600;
        if objetChoisi = 'Adamantite' then prixVendre := 10000;
        if objetChoisi = 'Ultimum' then prixVendre := 50000;

        if objetChoisi <> '' then
          begin
            repeat
            effacerEcran;
            lignes(8);
            writeln('                      ------------- VENDEUR: ---------------');
            lignes(1);
            writeln('                    Hmmm, ',objetChoisi,'? Je l´achete pour ',prixVendre,' or.');
            lignes(1);
            writeln('                               Ca vous va? (o/n))');
            lignes(1);
            writeln('                      -------------------------------------');
            lignes(9);
            write(' Ma réponse: > ');readln(choix);
            until ((choix = 'o') or (choix = 'O') or (choix = 'n') or (choix = 'N'));
            if ((choix = 'o') or (choix = 'O')) then
              begin
              nbOr := nbOr + prixVendre;
              if idObjet = '1' then objet1 := '';
              if idObjet = '2' then objet2 := '';
              if idObjet = '3' then objet3 := '';
              if idObjet = '4' then objet4 := '';
              if idObjet = '5' then objet5 := '';
              if idObjet = '6' then objet6 := '';
              if idObjet = '7' then objet7 := '';
              if idObjet = '8' then objet8 := '';
              if idObjet = '9' then objet9 := '';
              if idObjet = '10' then objet10 := '';
              end;
          end;
        until FALSE;
      end;
  end;


procedure vendeurPasAssez;
  begin
    effacerEcran;
    lignes(8);
    writeln('                      -------------- VENDEUR ---------------');
    lignes(1);
    writeln('                   Il semble que vous n´avez pas assez d´argent..');
    lignes(1);
    writeln('                               Revenez plus tard!');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    choix := '';
    write(' Ma réponse: > ');readln;
  end;
end.
