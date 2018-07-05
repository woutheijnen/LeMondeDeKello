unit actualisationEcranCombat;

interface
  uses
    Sysutils,
    ram,
    GestionEcran,
    barrePv,
    insererLignes,
    formulePv,
    formuleAttaque,
    formuleDefense,
    formuleVitesse;


  var
    attaquePers, defensePers, vitessePers: Integer;
{Contient les points d'attaque, de défense et de vitesse du joueur et sont utilisées dans les attaques,
la partie fuir et pour definir qui attaque en premier.}


//Header
  procedure actuEcranCombat;
  procedure cadreHautDefaut;
  procedure cadreHautGagne;
  procedure cadreHautPerdu;
  procedure cadreBasDefaut;
  procedure cadreBasKo;
  procedure cadreBasSort;


implementation
//Procédure d´actualisation de l´écran de combat -----------------------------
procedure actuEcranCombat;
  begin
//Récupérer les variables écris dans le RAM et effectuage des calculs des stats
    calculBarrePv;
    barrePvVisuelAdv := lireStringRam(11);
    barrePvVisuelPers := lireStringRam(12);
    nomAdv := lireStringRam(13);
    nivAdv := lireIntegerRam(48);
    pvAdvActuel := lireIntegerRam(41);
    pvAdvMax := lireIntegerRam(42);
    degatTotAdv := lireIntegerRam(49);
    soinAdv := lireIntegerRam(51);
    aClasse := lireStringRam(9);
    statutAdv := lireStringRam(14);
    nom := lireStringRam(1);
    nivCombat := lireIntegerRam(1);
    pvPersActuel := lireIntegerRam(9);
    pvPersMax := calculPvPersMax;
    degatTotPers := lireIntegerRam(50);
    soinPers := lireIntegerRam(52);
    pClasse := lireStringRam(4);
    statutPers := lireStringRam(15);
    xpCombat := lireIntegerRam(26);
    text1 := lireStringRam(16);
    text2 := lireStringRam(17);
    text3 := lireStringRam(18);
    text4 := lireStringRam(19);
    attaquePers := calculAttaquePers;
    defensePers := calculDefensePers;
    vitessePers := calculVitessePers;
    coulPvAdv := lireIntegerRam(46);
    coulPvPers := lireIntegerRam(47);
    sort1 := lireStringRam(5);
    sort2 := lireStringRam(6);
    sort3 := lireStringRam(7);
    sort4 := lireStringRam(8);
    choisirSort := lireIntegerRam(67);

//Affichage de l'interface du combat
    effacerEcran;
    writeln(' ╒══════════════════════════════¢');
    write(' │    '); couleurTexte(7); write(nomAdv); couleurTexte(15); write('          Nv: ');
    couleurTexte(1); writeln(nivAdv); couleurTexte(15);
    write(' │ Pv: '); couleurTexte(coulPvAdv); writeln(barrePvVisuelAdv); couleurTexte(15);
    write(' │      '); couleurTexte(7); write(pvAdvActuel); couleurTexte(15); write('/',pvAdvMax,' (');
    couleurTexte(4); write('-',degatTotAdv); couleurTexte(15); write(', '); couleurTexte(5);
    write('+',soinAdv); couleurTexte(15); writeln(')');
    write(' │    Classe: '); couleurTexte(14); write(aClasse); couleurTexte(15); write('    Statut: ');
    couleurTexte(6); writeln(statutAdv); couleurTexte(15);
    writeln(' ╘══════════════════════════════¢');
    lignes(1);
    writeln('                                 ╒════════════════════════════════════════════¢');
    write('                                 │    '); couleurTexte(7); write(nom);
    couleurTexte(15); write('               Nv: '); couleurTexte(1); writeln(nivCombat); couleurTexte(15);
    write('                                 │ PV: '); couleurTexte(coulPvPers);
    writeln(barrePvVisuelPers); couleurTexte(15);
    write('                                 │      '); couleurTexte(7); write(pvPersActuel);
    couleurTexte(15); write('/',pvPersMax,' ('); couleurTexte(4); write('-',degatTotPers);
    couleurTexte(15); write(', '); couleurTexte(5); writeln('+',soinPers,')'); couleurTexte(15);
    write('                                 │    Classe: '); couleurTexte(14);
    write(pClasse); couleurTexte(15); write('    Statut: '); couleurTexte(6); writeln(statutPers);
    couleurtexte(15);
    write('                                 │    Xp Prochain Niv: '); couleurTexte(3); writeln(xpCombat); couleurtexte(15);
    writeln('╒════════════════════════════════╧════════════════════════════════════════════¢');
      if (pvAdvActuel <= 0) then cadreHautGagne
        else if (pvPersActuel <= 0) then cadreHautPerdu
          else cadreHautDefaut;
    writeln('╞════════════════════════════════════════════╤════════════════════════════════¢');
      if (pvPersActuel > 0) and (pvAdvActuel > 0 ) then
        begin
          if (choisirSort = 1) then cadreBasSort else cadreBasDefaut;
        end else cadreBasKo;
    if (choisirSort <> 1) then writeln('│                                            │');
    writeln('╘════════════════════════════════════════════╧════════════════════════════════¢');

//Récupération du choix du joueur
    write(' Ma réponse: > '); readln(choix);
    ecrireStringRam(0, choix);
    text1 := '';
    text2 := '';
    text3 := '';
    text4 := '';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    choisirSort := 0;
    ecrireIntegerRam(67, choisirSort);
  end;


procedure cadreHautDefaut;
  begin
    write('│ '); couleurTexte(7); writeln(text1); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln(text2); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln(text3); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln(text4); couleurTexte(15);
  end;


procedure cadreHautGagne;
  begin
    xpGagne := lireIntegerRam(61);
    msgNiv := lireIntegerRam(55);
    orGagne := lireIntegerRam(62);
    write('│ '); couleurTexte(7); writeln('Vous avez gagné votre combat! Vous gagnez:'); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln(orGagne, ' pièces d´or et ',xpGagne,' xp.'); couleurTexte(15);
      if (msgNiv = 1) then
        begin
          write('│ '); couleurTexte(7); writeln('Vous êtes maintenant niveau',nivCombat,'!'); couleurTexte(15);
        end else
              begin
                writeln('│ ');
              end;
    writeln('│ ');
  end;


procedure cadreHautPerdu;
  begin
    write('│ '); couleurTexte(7); writeln('Vous avez perdu votre combat. Vous tombez dans les pommes et votre adversaire'); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln('volle vos objets et votre or.'); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln('  ...  ...  ...'); couleurTexte(15);
    write('│ '); couleurTexte(7); writeln('Quelques heures plus tard, vous prenez conscience à nouveau.'); couleurTexte(15);
  end;


procedure cadreBasDefaut;
  begin
    write('│   1: '); couleurTexte(7); write('Attaque'); couleurTexte(15); write('      3: ');
    couleurTexte(7); write('Objet'); couleurTexte(15); write('                 │ Attaque: ');
    couleurTexte(4); writeln(attaquePers); couleurTexte(15);
    write('│                                            │ Defense: '); couleurTexte(2);
    writeln(defensePers); couleurTexte(15);
    write('│   2: '); couleurTexte(7); write('Sort'); couleurTexte(15); write('         4: ');
    couleurTexte(7); write('Fuir'); couleurTexte(15); write('                  │ Vitesse: ');
    couleurTexte(1); writeln(vitessePers); couleurTexte(15);
  end;


procedure cadreBasKo;
  begin
    write('│                                            │ Attaque: '); couleurTexte(4);
    writeln(attaquePers); couleurTexte(15);
    write('│                                            │ Defense: '); couleurTexte(2);
    writeln(defensePers); couleurTexte(15);
    write('│                                            │ Vitesse: ');
    couleurTexte(1); writeln(vitessePers); couleurTexte(15);
  end;


procedure cadreBasSort;
  begin
    couleurTexte(15);
    writeln('│   1: ',sort1);
    writeln('│   2: ',sort2);
    writeln('│   3: ',sort3);
    writeln('│   4: ',sort4);
  end;
end.
