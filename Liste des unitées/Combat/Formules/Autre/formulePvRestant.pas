unit formulePvRestant;

interface
  uses
    Sysutils,
    ram,
    combatFin,
    formulePv;


  var
    pvPersMax: Integer;
{Contiens combien de pv actuel le joueur peut avoir en maximum.}


//Header
  procedure joueurPlusRapide;
  procedure adversairePlusRapide;


implementation
procedure joueurPlusRapide;
  begin
    pvAdvActuel := lireIntegerRam(41);
    degatTotAdv := lireIntegerRam(49);
    pvPersActuel := lireIntegerRam(9);
    degatTotPers := lireIntegerRam(50);
    soinAdv := lireIntegerRam(51);
    soinPers := lireIntegerRam(52);
    pvAdvMax := lireIntegerRam(42);
    pvPersMax := calculPvPersMax;

    pvAdvActuel := pvAdvActuel - degatTotAdv;
    pvPersActuel := pvPersActuel + soinPers;
    if (pvPersActuel > pvPersMax) then pvPersActuel := pvPersMax;
    ecrireIntegerRam(41, pvAdvActuel);
    ecrireIntegerRam(9, pvPersActuel);
    if (pvAdvActuel <= 0) then  adversaireKo
      else pvAdvActuel := pvAdvActuel + soinAdv;
    if (pvAdvActuel > pvAdvMax) then pvAdvActuel := pvAdvMax;
    ecrireIntegerRam(41, pvAdvActuel);

    pvPersActuel := pvPersActuel - degatTotPers;
    ecrireIntegerRam(9, pvPersActuel);
    if pvPersActuel <= 0 then joueurKo;
  end;


procedure adversairePlusRapide;
  begin
    pvAdvActuel := lireIntegerRam(41);
    degatTotAdv := lireIntegerRam(49);
    pvPersActuel := lireIntegerRam(9);
    degatTotPers := lireIntegerRam(50);
    soinAdv := lireIntegerRam(51);
    soinPers := lireIntegerRam(52);
    pvAdvMax := lireIntegerRam(42);
    pvPersMax := calculPvPersMax;

    pvPersActuel := pvPersActuel - degatTotPers;
    pvAdvActuel := pvAdvActuel + soinAdv;
    if (pvAdvActuel > pvAdvMax) then pvAdvActuel := pvAdvMax;
    ecrireIntegerRam(41, pvAdvActuel);
    ecrireIntegerRam(9, pvPersActuel);
    if (pvPersActuel <= 0) then  joueurKo
      else pvPersActuel := pvPersActuel + soinPers;
    if (pvPersActuel > pvPersMax) then pvPersActuel := pvPersMax;
    ecrireIntegerRam(9, pvPersActuel);

    pvAdvActuel := pvAdvActuel - degatTotAdv;
    ecrireIntegerRam(41, pvAdvActuel);
    if pvAdvActuel <= 0 then adversaireKo;
  end;
end.
