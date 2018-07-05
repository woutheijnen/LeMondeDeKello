unit barrePv;

interface
  uses
    Sysutils,
    ram,
    formulePv;


  var
    pvPourPers, pvPourAdv: Integer;
{Contient le pourcentage de Pv actuel et Pv max (entre 0 et 100 normalement).}
    pvPersMax: Integer;
{Contient le maximum de pv le joueur peut avoir.}


//Header
  procedure CalculBarrePv;


implementation
procedure calculBarrePv;
  begin
    pvAdvActuel := lireIntegerRam(41);
    pvAdvMax := lireIntegerRam(42);
    pvPourAdv := ((pvAdvActuel*100) div (pvAdvMax));
    if (pvPourAdv <= 0) then barrePvVisuelAdv := '';
    if (pvPourAdv > 0) and (pvPourAdv <= 5) then barrePvVisuelAdv := '█';
    if (pvPourAdv > 5) and (pvPourAdv <= 10) then barrePvVisuelAdv := '██';
    if (pvPourAdv > 10) and (pvPourAdv <= 15) then barrePvVisuelAdv := '███';
    if (pvPourAdv > 15) and (pvPourAdv <= 20) then barrePvVisuelAdv := '████';
    if (pvPourAdv > 20) and (pvPourAdv <= 25) then barrePvVisuelAdv := '█████';
    if (pvPourAdv > 25) and (pvPourAdv <= 30) then barrePvVisuelAdv := '██████';
    if (pvPourAdv > 30) and (pvPourAdv <= 35) then barrePvVisuelAdv := '███████';
    if (pvPourAdv > 35) and (pvPourAdv <= 40) then barrePvVisuelAdv := '████████';
    if (pvPourAdv > 40) and (pvPourAdv <= 45) then barrePvVisuelAdv := '█████████';
    if (pvPourAdv > 45) and (pvPourAdv <= 50) then barrePvVisuelAdv := '██████████';
    if (pvPourAdv > 50) and (pvPourAdv <= 55) then barrePvVisuelAdv := '███████████';
    if (pvPourAdv > 55) and (pvPourAdv <= 60) then barrePvVisuelAdv := '████████████';
    if (pvPourAdv > 60) and (pvPourAdv <= 65) then barrePvVisuelAdv := '█████████████';
    if (pvPourAdv > 65) and (pvPourAdv <= 70) then barrePvVisuelAdv := '██████████████';
    if (pvPourAdv > 70) and (pvPourAdv <= 75) then barrePvVisuelAdv := '███████████████';
    if (pvPourAdv > 75) and (pvPourAdv <= 80) then barrePvVisuelAdv := '████████████████';
    if (pvPourAdv > 80) and (pvPourAdv <= 85) then barrePvVisuelAdv := '█████████████████';
    if (pvPourAdv > 85) and (pvPourAdv <= 90) then barrePvVisuelAdv := '██████████████████';
    if (pvPourAdv > 90) and (pvPourAdv <= 95) then barrePvVisuelAdv := '███████████████████';
    if (pvPourAdv > 95) and (pvPourAdv <= 100) then barrePvVisuelAdv := '████████████████████';
    ecrireStringRam(11,barrePvVisuelAdv);
    if (pvPourAdv <= 33) then coulPvAdv := 4;
    if (pvPourAdv > 33) and (pvPourAdv <= 66) then coulPvAdv := 14;
    if (pvPourAdv > 66) and (pvPourAdv <= 100) then coulPvAdv := 2;
    ecrireIntegerRam(46,coulPvAdv);
    pvPersActuel := lireIntegerRam(9);
    pvPersMax := calculPvPersMax;
    pvPourPers := ((pvPersActuel*100) div (pvPersMax));
    if (pvPourPers <= 0) then barrePvVisuelPers := '';
    if (pvPourPers > 0) and (pvPourPers <= 5) then barrePvVisuelPers := '█';
    if (pvPourPers > 5) and (pvPourPers <= 10) then barrePvVisuelPers := '██';
    if (pvPourPers > 10) and (pvPourPers <= 15) then barrePvVisuelPers := '███';
    if (pvPourPers > 15) and (pvPourPers <= 20) then barrePvVisuelPers := '████';
    if (pvPourPers > 20) and (pvPourPers <= 25) then barrePvVisuelPers := '█████';
    if (pvPourPers > 25) and (pvPourPers <= 30) then barrePvVisuelPers := '██████';
    if (pvPourPers > 30) and (pvPourPers <= 35) then barrePvVisuelPers := '███████';
    if (pvPourPers > 35) and (pvPourPers <= 40) then barrePvVisuelPers := '████████';
    if (pvPourPers > 40) and (pvPourPers <= 45) then barrePvVisuelPers := '█████████';
    if (pvPourPers > 45) and (pvPourPers <= 50) then barrePvVisuelPers := '██████████';
    if (pvPourPers > 50) and (pvPourPers <= 55) then barrePvVisuelPers := '███████████';
    if (pvPourPers > 55) and (pvPourPers <= 60) then barrePvVisuelPers := '████████████';
    if (pvPourPers > 60) and (pvPourPers <= 65) then barrePvVisuelPers := '█████████████';
    if (pvPourPers > 65) and (pvPourPers <= 70) then barrePvVisuelPers := '██████████████';
    if (pvPourPers > 70) and (pvPourPers <= 75) then barrePvVisuelPers := '███████████████';
    if (pvPourPers > 75) and (pvPourPers <= 80) then barrePvVisuelPers := '████████████████';
    if (pvPourPers > 80) and (pvPourPers <= 85) then barrePvVisuelPers := '█████████████████';
    if (pvPourPers > 85) and (pvPourPers <= 90) then barrePvVisuelPers := '██████████████████';
    if (pvPourPers > 90) and (pvPourPers <= 95) then barrePvVisuelPers := '███████████████████';
    if (pvPourPers > 95) and (pvPourPers <= 100) then barrePvVisuelPers := '████████████████████';
    ecrireStringRam(12,barrePvVisuelPers);
    if (pvPourPers <= 33) then coulPvPers := 4;
    if (pvPourPers > 33) and (pvPourPers <= 66) then coulPvPers := 14;
    if (pvPourPers > 66) and (pvPourPers <= 100) then coulPvPers := 2;
    ecrireIntegerRam(47,coulPvPers);
  end;
end.
