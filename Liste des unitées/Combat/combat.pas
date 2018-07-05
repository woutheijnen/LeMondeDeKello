unit combat;

interface
  uses
    Sysutils,
    mmSystem,
    defineValsPers,
    formulePv,
    formuleAttaque,
    formuleDefense,
    formuleVitesse,
    actualisationEcranCombat,
    effPers,
    joueurAttaque,
    joueurChoisirSortAttaque,
    combatFuire,
    GestionEcran,
    map,
    ram,
    sac;


//Header
  procedure demarCombat;


implementation
//Procedure de combat ---------------------------------------------------------
procedure demarCombat;
  begin
    playsound('combat.wav',0,SND_ASYNC);
    attendre(250);
//Initialisation
    aClasse := lireStringRam(9);
    pClasse := lireStringRam(4);

    if (aClasse = 'Guerrier') then
      begin
        valAdvAtt := 100;
        valAdvDef := 200;
        valAdvVit := 100;
        valAdvPv := 200;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;
    if (aClasse = 'Rodeur') then
      begin
        valAdvAtt := 125;
        valAdvDef := 150;
        valAdvVit := 150;
        valAdvPv := 175;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;
    if (aClasse = 'Mage') then
      begin
        valAdvAtt := 200;
        valAdvDef := 125;
        valAdvVit := 125;
        valAdvPv := 150;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;
    if (aClasse = 'Mage Noir') then
      begin
        valAdvAtt := 225;
        valAdvDef := 100;
        valAdvVit := 140;
        valAdvPv := 135;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;
    if (aClasse = 'Vampire') then
      begin
        valAdvAtt := 135;
        valAdvDef := 125;
        valAdvVit := 115;
        valAdvPv := 225;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;
    if (aClasse = 'Hybride') then
      begin
        valAdvAtt := 150;
        valAdvDef := 150;
        valAdvVit := 150;
        valAdvPv := 150;
        ecrireIntegerRam(valAdvAtt,37);
        ecrireIntegerRam(valAdvDef,38);
        ecrireIntegerRam(valAdvVit,39);
        ecrireIntegerRam(valAdvPv,40);
      end;

    if (pClasse = 'Guerrier') then
      begin
        valClasseAtt := 100;
        valClasseDef := 200;
        valClasseVit := 100;
        valClassePv := 200;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;
    if (pClasse = 'Rodeur') then
      begin
        valClasseAtt := 125;
        valClasseDef := 150;
        valClasseVit := 150;
        valClassePv := 175;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;
    if (pClasse = 'Mage') then
      begin
        valClasseAtt := 200;
        valClasseDef := 125;
        valClasseVit := 125;
        valClassePv := 150;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;
    if (pClasse = 'Mage Noir') then
      begin
        valClasseAtt := 225;
        valClasseDef := 100;
        valClasseVit := 140;
        valClassePv := 135;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;
    if (pClasse = 'Vampire') then
      begin
        valClasseAtt := 135;
        valClasseDef := 125;
        valClasseVit := 115;
        valClassePv := 225;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;
    if (pClasse = 'Hybride') then
      begin
        valClasseAtt := 150;
        valClasseDef := 150;
        valClasseVit := 150;
        valClassePv := 150;
        ecrireIntegerRam(valClasseAtt,10);
        ecrireIntegerRam(valClasseDef,11);
        ecrireIntegerRam(valClasseVit,12);
        ecrireIntegerRam(valClassePv,13);
      end;

    diff := lireStringRam(10);
    if diff = 'Novice' then valDiff := 6;
    if diff = 'Facile' then valDiff := 7;
    if diff = 'Normal' then valDiff := 8;
    if diff = 'Difficile' then valDiff := 9;
    if diff = 'Elite' then valDiff := 10;
    if diff = 'Hardcore' then valDiff := 16;

    if (diff = 'Novice') then orDiff := 200;
    if (diff = 'Facile') then orDiff := 150;
    if (diff = 'Normal') then orDiff := 100;
    if (diff = 'Difficile') then orDiff := 50;
    if (diff = 'Elite') then orDiff := 25;
    if (diff = 'Hardcore') then orDiff := 12;

    ecrireIntegerRam(34, valDiff);
    ecrireIntegerRam(36, orDiff);

    calculPvAdvMax;
    ecrireIntegerRam(41, lireIntegerRam(42));
    calculAttaqueAdv;
    calculDefenseAdv;
    calculVitesseAdv;

    text1 := '';
    text2 := '';
    text3 := '';
    text4 := '';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);

    fuireEssai := 0;
    ecrireIntegerRam(68, fuireEssai);
    fuireReussi := 0;
    ecrireIntegerRam(69, fuireReussi);

    ecrireIntegerRam(49, 0);
    ecrireIntegerRam(50, 0);
    repeat
    actuEcranCombat;
    defEfficacitePers;
    soinPers := 0;
    ecrireIntegerRam(52, soinPers);

    choix := lireStringRam(0);
    if (choix = '1') then  persAttaque;
    if (choix = '2') and ((pClasse = 'Mage') or (pClasse = 'Mage Noir') or (pClasse = 'Hybride')) then choisirSortsCombat;
    if (choix = '2') and (pClasse <> 'Mage') and (pClasse <> 'Mage Noir') and (pClasse <> 'Hybride') then
      begin
        text3 := 'Vous ne connaissez pas de sorts.';
        ecrireStringRam(18, text3);
        actuEcranCombat;
      end;
    if (choix = '3') then ouvrirSac;
    if (choix = '4') then fuire;

    pvPersActuel := lireIntegerRam(9);
    pvAdvActuel := lireIntegerRam(41);
    fuireReussi := lireIntegerRam (69);
    if ((pvAdvActuel <= 0) or (fuireReussi = 1)) then exit;
    if pvPersActuel <= 0 then
      begin
        pvPersActuel := calculPvPersMax;
        ecrireIntegerRam(9, pvPersActuel);
        exit;
      end;
    until FALSE;
    end;
end.
