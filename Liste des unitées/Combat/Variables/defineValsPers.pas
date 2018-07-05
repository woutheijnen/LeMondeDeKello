unit defineValsPers;

interface
  uses
    SysUtils,
    ram;


//Header
  procedure defineValsPersGuerrier;
  procedure defineValsPersRodeur;
  procedure defineValsPersMage;
  procedure defineValsPersMageNoir;
  procedure defineValsPersVampire;
  procedure defineValsPersHybride;


implementation
procedure defineValsPersGuerrier;
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


procedure defineValsPersRodeur;
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


procedure defineValsPersMage;
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


procedure defineValsPersMageNoir;
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


procedure defineValsPersVampire;
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


procedure defineValsPersHybride;
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



end.

