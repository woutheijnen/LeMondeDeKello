unit sac;

interface
  uses
    Sysutils,
    ram,
    GestionEcran,
    insererLignes,
    potion,
    sPotion,
    mPotion,
    livreDeCombat,
    tribulus,
    propolis,
    ginseng,
    omega3,
    objetErreur;


  var
    nbObjet, nbObjetMax: Integer;
{Contiens combien d´objets le joueur a sur lui et le maximum qu´il peut avoir par rapport a pClasse.}
    objetChoisi, idObjet: String;
{Contiens l´objet qui a été choisi par le joueur.
Pareil pour idObjet sauf que ceci contient ou cette objet est situé dans le sac du joueur.}


//Header
  procedure ouvrirSac;
  procedure interfaceSac;


implementation
procedure ouvrirSac;
  begin
    repeat
    interfaceSac;
    objetChoisi := '';
    if ((choix = '1') and (objet1 <> '')) then objetChoisi := objet1;
    if ((choix = '2') and (objet2 <> '')) then objetChoisi := objet2;
    if ((choix = '3') and (objet3 <> '')) then objetChoisi := objet3;
    if ((choix = '4') and (objet4 <> '')) then objetChoisi := objet4;
    if ((choix = '5') and (objet5 <> '')) then objetChoisi := objet5;
    if ((choix = '6') and (objet6 <> '')) then objetChoisi := objet6;
    if ((choix = '7') and (nbObjetMax = 10) and (objet7 <> '')) then objetChoisi := objet7;
    if ((choix = '8') and (nbObjetMax = 10) and (objet8 <> '')) then objetChoisi := objet8;
    if ((choix = '9') and (nbObjetMax = 10) and (objet9 <> '')) then objetChoisi := objet9;
    if ((choix = '10') and (nbObjetMax = 10) and (objet10 <> '')) then objetChoisi := objet10;

    if objetChoisi <> '' then
      begin
        idObjet := choix;
        effacerEcran;
        lignes(6);
        writeln('                         ------------- ',objetChoisi,' --------------');
        lignes(1);
        writeln('                          Vous-voulez faire quoi avec ',objetChoisi,'?');
        lignes(1);
        writeln('                          -------------------------------------');
        lignes(2);
        writeln('       1: Utiliser');
        writeln('       2: Jeter');
        writeln('       3: Rien faire.');
        lignes(8);
        write(' Ma réponse: > ');readln(choix);

        if choix = '1' then
          begin
            if objetChoisi = 'Potion' then utiliserPotion;
            if objetChoisi = 'Super Potion' then utiliserSPotion;
            if objetChoisi = 'Mega Potion' then utiliserMPotion;
            if objetChoisi = 'Livre de Combat' then utiliserLivDCombat;
            if objetChoisi = 'Tribulus Terrestris' then utiliserTribulus;
            if objetChoisi = 'Propolis' then utiliserPropolis;
            if objetChoisi = 'Racine de Ginseng' then utiliserGinseng;
            if objetChoisi = 'Oméga-3' then utiliserOmega3;
            if objetChoisi = 'Argile' then msgErreurUtiliser;
            if objetChoisi = 'Etain' then msgErreurUtiliser;
            if objetChoisi = 'Cuivre' then msgErreurUtiliser;
            if objetChoisi = 'Fer' then msgErreurUtiliser;
            if objetChoisi = 'Charbon' then msgErreurUtiliser;
            if objetChoisi = 'Or' then msgErreurUtiliser;
            if objetChoisi = 'Adamantite' then msgErreurUtiliser;
            if objetChoisi = 'Ultimum' then msgErreurUtiliser;

            if objetChoisi = 'Argile' then idObjet := '';
            if objetChoisi = 'Etain' then idObjet := '';
            if objetChoisi = 'Cuivre' then idObjet := '';
            if objetChoisi = 'Fer' then idObjet := '';
            if objetChoisi = 'Charbon' then idObjet := '';
            if objetChoisi = 'Or' then idObjet := '';
            if objetChoisi = 'Adamantite' then idObjet := '';
            if objetChoisi = 'Ultimum' then idObjet := '';

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
          end;

        if choix = '2' then
          begin
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
          end;
      end;
    until ((choix = 'q') or (choix = 'Q'));
  end;


procedure interfaceSac;
  begin
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
    nbObjet := 0;
    pClasse := lireStringRam(4);

    if ((pClasse = 'Guerrier') or (pClasse = 'Hybride'))  then nbObjetMax := 10
    else nbObjetMax := 6;

    if objet1 <> '' then nbObjet := nbObjet + 1;
    if objet2 <> '' then nbObjet := nbObjet + 1;
    if objet3 <> '' then nbObjet := nbObjet + 1;
    if objet4 <> '' then nbObjet := nbObjet + 1;
    if objet5 <> '' then nbObjet := nbObjet + 1;
    if objet6 <> '' then nbObjet := nbObjet + 1;
    if ((objet7 <> '') and (nbObjetMax = 10)) then nbObjet := nbObjet + 1;
    if ((objet8 <> '') and (nbObjetMax = 10)) then nbObjet := nbObjet + 1;
    if ((objet9 <> '') and (nbObjetMax = 10)) then nbObjet := nbObjet + 1;
    if ((objet10 <> '') and (nbObjetMax = 10)) then nbObjet := nbObjet + 1;

    effacerEcran;
    lignes(3);
    writeln('                      ----------------- SAC: ----------------');
    writeln('                   Vous choisisez quelle objet? ("q" pour Quitter)');
    lignes(2);
    writeln('                           1: ', objet1);
    writeln('                           2: ', objet2);
    writeln('                           3: ', objet3);
    writeln('                           4: ', objet4);
    writeln('                           5: ', objet5);
    writeln('                           6: ', objet6);
    if nbObjetMax = 10 then
      begin
        writeln('                           7: ', objet7);
        writeln('                           8: ', objet8);
        writeln('                           9: ', objet9);
        writeln('                          10: ', objet10);
        lignes(1);
      end else lignes (5);
    writeln('                          Capacité du sac: ', nbObjet,'/',nbObjetMax);
    lignes(1);
    writeln('                      ---------------------------------------');
    lignes(3);
    write(' Ma réponse: > ');readln(choix);
    ecrireStringRam(0, choix);
  end;
end.
