unit formulePv;

interface
  uses
    SysUtils,
    genererNombreAleatoire,
    defineValsPers,
    ram;


  var
    viAdvPv: Integer;
{Contient la valeur individuelle (Pv) de l'adversaire.}


//Header
  function calculPvPersMax: Integer;
  procedure calculPvAdvMax;


implementation
function calculPvPersMax: Integer;
  begin
    viPv := lireIntegerRam(20);
    valClassePv := lireIntegerRam(13);
    nivCombat := lireIntegerRam(1);
    vePv := lireIntegerRam(24);
    calculPvPersMax := (((viPv+valClassePv+50)*nivCombat) div 50)+10+(vePv div 4);
  end;


procedure calculPvAdvMax;
  begin
    aleatoire(0,32);
    viAdvPv := lireIntegerRam(0);
    valAdvPv := lireIntegerRam(40);
    nivAdv := lireIntegerRam(48);
    valDiff := lireIntegerRam(34);
    pvAdvMax := (((((viAdvPv+valAdvPv+50)*nivAdv) div 50)*(valDiff*10))div 80) + 10;
    ecrireIntegerRam(42,pvAdvMax);
  end;
end.
