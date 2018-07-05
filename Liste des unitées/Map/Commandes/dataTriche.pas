unit dataTriche;

interface
  uses
    Sysutils,
    ram,
    GestionEcran,
    insererLignes,
    formulePv,
    combat,
    map;


//Header
  procedure debug;
  procedure tele;
  procedure genererCombat;
  procedure traverserLesMurs;
  procedure donnerObjet;


implementation
procedure debug;
  begin
    effacerEcran;
    blocade := lireIntegerRam(70);
    joueurX := lireIntegerRam(15);
    joueurY := lireIntegerRam(16);
    lignes(1);
    writeln('  x: ',joueurX);
    writeln('  y: ',joueury);
    writeln('  blocade: ',blocade);
    readln;
  end;


procedure tele;
  begin
    effacerEcran;
    lignes(1);
    write('  x?: '); readln(joueurX);
    write('  y?: '); readln(joueury);
    write('  map?: '); readln(nbMap);
    ecrireIntegerRam(15, joueurX);
    ecrireIntegerRam(16, joueurY);
    ecrireIntegerRam(14, nbMap);
    mapMusique;
  end;


procedure donnerObjet;
  begin
    effacerEcran;
    lignes(1);
    write('  Objet?: '); readln(temp);
    objet1 := temp;
    objet2 := temp;
    objet3 := temp;
    objet4 := temp;
    objet5 := temp;
    objet6 := temp;
    objet7 := temp;
    objet8 := temp;
    objet9 := temp;
    objet10 := temp;
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


procedure genererCombat;
  begin
    effacerEcran;
    lignes(1);
    write('  Nom Adv? '); readln(nomAdv);
    write('  Statut Adv? '); readln(statutAdv);
    write('  Niv Adv? '); readln(nivAdv);
    write('  Pouv arme Adv? '); readln(pouvArmeAdv);
    write('  Classe adv? ');readln(aClasse);
    write('  Statut vous? '); readln(statutPers);
    write('  Niv vous? '); readln(nivCombat);
    write('  Pouv Arme vous? '); readln(pouvArmePers);
    write('  Sort vous 1? '); readln(sort1);
    write('  Sort vous 2? '); readln(sort2);
    write('  Sort vous 3? '); readln(sort3);
    write('  Sort vous 4? '); readln(sort4);
    write('  Sort adv 1? '); readln(sort1Adv);
    write('  Sort adv 2? '); readln(sort2Adv);
    write('  Sort adv 3? '); readln(sort3Adv);
    write('  Sort adv 4? '); readln(sort4Adv);
    pvPersActuel := calculPvPersMax;
    ecrireStringRam(13, nomAdv);
    ecrireStringRam(14, statutAdv);
    ecrireIntegerRam(48, nivAdv);
    ecrireIntegerRam(65, pouvArmeAdv);
    ecrireStringRam(9, aClasse);
    ecrireStringRam(15, statutPers);
    ecrireIntegerRam(1, nivCombat);
    ecrireIntegerRam(66, pouvArmePers);
    ecrireStringRam(5, sort1);
    ecrireStringRam(6, sort2);
    ecrireStringRam(7, sort3);
    ecrireStringRam(8, sort4);
    ecrireStringRam(21, sort1Adv);
    ecrireStringRam(22, sort2Adv);
    ecrireStringRam(23, sort3Adv);
    ecrireStringRam(24, sort4Adv);
    ecrireIntegerRam(9, pvPersActuel);
    demarCombat;
  end;


procedure traverserLesMurs;
  begin
    if (travMur = 1) then
      begin
        travMur := 0;
        effacerEcran;
        writeln('Mode traverser les murs desactivé.');
        ecrireIntegerRam(71, travMur);
        readln;
      end else
            begin
              travMur := 1;
              effacerEcran;
              writeln('Mode traverser les murs activé.');
              ecrireIntegerRam(71, travMur);
              readln;
            end;
      end;
end.
