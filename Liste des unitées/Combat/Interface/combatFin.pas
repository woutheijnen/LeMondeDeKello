unit combatFin;

interface
  uses
    Sysutils,
    actualisationEcranCombat,
    formuleXp,
    formuleOr,
    formulePv,
    monterNiv,
    ram,
    map;


//Header
  procedure adversaireKo;
  procedure joueurKo;


implementation
procedure adversaireKo;
begin
    pvAdvActuel := 0;
    degatTotPers := 0;
    ecrireIntegerRam(41, pvAdvActuel);
    ecrireIntegerRam(50, degatTotPers);
    xpCombat := lireIntegerRam(26);

    xpGagne := calculXpCombat;
    ecrireIntegerRam(61, xpGagne);
    xpCombat := xpCombat - xpGagne;
    ecrireIntegerRam(26, xpCombat);
    nivCombat := lireIntegerRam(1);
      if ((xpCombat <= 0) and (nivCombat <= 99)) then monterNivCombat
    else
      begin
        xpCombat := 0;
        nivCombat := 100;
        ecrireIntegerRam(26, xpCombat);
        ecrireIntegerRam(1, nivCombat);
      end;

    orGagne := calculOrCombat;
    ecrireIntegerRam(62, orGagne);
    nbOr := lireIntegerRam(56);
    nbOr := nbOr + orGagne;
    ecrireIntegerRam(56, nbOr);
    nomAdv := lireStringRam(13);
    if nomAdv = 'Jimmy' then ecrireIntegerRam(79, 1);
    actuEcranCombat;
    mapMusique;
    end;


procedure joueurKo;
begin
    pvPersActuel := 0;
    ecrireIntegerRam(9, pvPersActuel);
    nbOr := 0;
    ecrireIntegerRam(56, nbOr);
    ecrireStringRam(33, '');
    ecrireStringRam(34, '');
    ecrireStringRam(35, '');
    ecrireStringRam(36, '');
    ecrireStringRam(37, '');
    ecrireStringRam(38, '');
    ecrireStringRam(39, '');
    ecrireStringRam(40, '');
    ecrireStringRam(41, '');
    ecrireStringRam(42, '');
    ecrireStringRam(15, '');
    actuEcranCombat;
    joueurX := 9;
    joueurY := 6;
    nbMap := 0;
    ecrireIntegerRam(14, nbMap);
    ecrireIntegerRam(15, joueurX);
    ecrireIntegerRam(16, joueurY);
    mapMusique;
    end;
end.
