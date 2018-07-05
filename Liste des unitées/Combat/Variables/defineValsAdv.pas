unit defineValsAdv;

interface
  uses
    SysUtils,
    ram;


//Header
  procedure defineValsAdvGuerrier;
  procedure defineValsAdvRodeur;
  procedure defineValsAdvMage;
  procedure defineValsAdvMageNoir;
  procedure defineValsAdvVampire;
  procedure defineValsAdvHybride;


implementation
procedure defineValsAdvGuerrier;
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


procedure defineValsAdvRodeur;
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


procedure defineValsAdvMage;
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


procedure defineValsAdvMageNoir;
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


procedure defineValsAdvVampire;
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


procedure defineValsAdvHybride;
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
end.
