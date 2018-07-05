unit formuleXp;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram;


//Header
  function calculXpCombat: Integer;


implementation
function calculXpCombat;
  begin
    aleatoire(28, 581);
    nivAdv := lireIntegerRam(48);
    valDiff := lireIntegerRam(34);
    calculXpCombat := ((lireIntegerRam(0)*nivAdv) div 7 * valDiff * 10 div 80);
  end;
end.
