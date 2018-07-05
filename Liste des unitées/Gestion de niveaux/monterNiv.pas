unit monterNiv;

interface
  uses
    Sysutils,
    ram,
    tableXp;


  var
    xpReste: Integer;
{Contiens une valeur négative ou nul qui doit être ajouté après l'initialisation du xpCombat (xp jusqu'à
prochain niveau).}


//Header
  procedure monterNivCombat;
  procedure monterNivMinier;


implementation
procedure monterNivCombat;
  begin
    xpCombat := lireIntegerRam(26);
    nivCombat := lireIntegerRam(1);
    repeat
      xpReste := xpCombat;
      nivCombat := nivCombat+1;
      ecrireIntegerRam(1, nivCombat);
      if nivCombat <= 100 then msgNiv := 1;
      tableXpCombat;
      xpCombat := xpCombat + xpReste;
    until xpCombat >= 0;
    ecrireIntegerRam(26, xpCombat);
    ecrireIntegerRam(55, msgNiv);
  end;


procedure monterNivMinier;
  begin
    nivMinier := lireIntegerRam(2);
    xpMinier := lireIntegerRam(29);
    repeat
      xpReste := xpMinier;
      nivMinier := nivMinier +1;
      ecrireIntegerRam(2, nivMinier);
      if nivCombat <= 100 then msgNiv := 1;
      tableXpMinier;
      xpMinier := xpMinier + xpReste;
    until xpMinier >= 0;
    ecrireIntegerRam(29, xpMinier);
    ecrireIntegerRam(55, msgNiv);
  end;
end.
