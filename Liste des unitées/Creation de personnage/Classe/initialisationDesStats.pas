unit initialisationDesStats;

interface
  uses
    SysUtils,
    ram,
    genererNombreAleatoire,
    formulePv;


//Header
  procedure initialisationCreation;


implementation
//Initialisation des stats ----------------------------------------------------
procedure initialisationCreation;
  begin
    pClasse := lireStringRam(4);
    if pclasse = 'Mage' then
      begin
      sort1 := 'Boule de Feu';
      sort2 := 'Soignage';
      end;
    if pclasse = 'Mage Noir' then
      begin
      sort1 := 'Boule de Sang';
      sort2 := 'Anti-Soin';
      end;
    if pclasse = 'Hybride' then
      begin
      sort1 := 'Boule de Feu';
      sort2 := 'Soignage';
      end;
    aleatoire(0,32);
    viAttaque := lireIntegerRam(0);
    aleatoire(0,32);
    viDefense := lireIntegerRam(0);
    aleatoire(0,32);
    viVitesse := lireIntegerRam(0);
    aleatoire(0,32);
    viPv := lireIntegerRam(0);
    veAttaque := 0;
    veDefense := 0;
    veVitesse := 0;
    vePv := 0;
    nivCombat := 25;
    xpCombat := 512;
    nivPeche := 1;
    xpPeche := 83;
    nivCuisine := 1;
    xpCuisine := 83;
    nivCoupe := 1;
    xpCoupe := 83;
    nivEmpennage := 1;
    xpEmpennage := 83;
    nivMinier := 1;
    xpMinier := 83;
    nivForge := 1;
    xpForge := 83;
    nivEtude := 1;
    xpEtude := 83;
    joueurX := 10;
    joueurY := 27;
    galack := 1;
    galackMap := 99;
    pouvArmePers := 40;

//Ecriture dans le RAM
    ecrireStringRam(5, sort1);
    ecrireStringRam(6, sort2);
    ecrireIntegerRam(17,viAttaque);
    ecrireIntegerRam(18,viDefense);
    ecrireIntegerRam(19,viVitesse);
    ecrireIntegerRam(20,viPv);
    ecrireIntegerRam(21,veAttaque);
    ecrireIntegerRam(22,veDefense);
    ecrireIntegerRam(23,veVitesse);
    ecrireIntegerRam(24,vePv);
    ecrireIntegerRam(1,nivCombat);
    ecrireIntegerRam(26,xpCombat);
    ecrireIntegerRam(4,nivPeche);
    ecrireIntegerRam(27,xpPeche);
    ecrireIntegerRam(5,nivCuisine);
    ecrireIntegerRam(3,nivCoupe);
    ecrireIntegerRam(28,xpCoupe);
    ecrireIntegerRam(6,nivEmpennage);
    ecrireIntegerRam(32,xpEmpennage);
    ecrireIntegerRam(33,xpCuisine);
    ecrireIntegerRam(2,nivMinier);
    ecrireIntegerRam(29,xpMinier);
    ecrireIntegerRam(7,nivForge);
    ecrireIntegerRam(30,xpForge);
    ecrireIntegerRam(8,nivEtude);
    ecrireIntegerRam(31,xpEtude);
    ecrireIntegerRam(15,joueurX);
    ecrireIntegerRam(16,joueurY);
    ecrireIntegerRam(66,pouvArmePers);

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

    pvPersActuel := calculPvPersMax;
    ecrireIntegerRam(9,pvPersActuel)
  end;
end.
