unit formuleFuire;

interface
  uses
    Sysutils,
    ram,
    formuleVitesse;


  var
    vitessePers: Integer;
{Contiens combien de points de vitesse le joueur a.}


//Header
  function calculFuireChance: Integer;


implementation
function calculFuireChance: Integer;
  begin
    vitessePers := calculVitessePers;
    vitesseAdv := lireIntegerRam(45);
    fuireEssai := lireIntegerRam(68);
    calculFuireChance := ((((vitessePers*32)div vitesseAdv) + 30) * fuireEssai);
  end;
end.
