unit formuleOr;

interface
  uses
    Sysutils,
    ram,
    genererNombreAleatoire;

//Header
  function calculOrCombat: Integer;


implementation
function calculOrCombat;
  begin
    nivAdv := lireIntegerRam(48);
    aleatoire(5, 95);
    orDiff := lireIntegerRam(36);
    calculOrCombat := nivAdv * lireIntegerRam(0) * orDiff div 100;
  end;
end.
