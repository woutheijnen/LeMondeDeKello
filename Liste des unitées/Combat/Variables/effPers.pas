unit effPers;

interface
  uses
    Sysutils,
    ram;


//Header
  procedure defEfficacitePers;
  procedure efficaciteCACPers;
  procedure efficaciteDistPers;
  procedure efficaciteMagPers;


implementation
procedure defEfficacitePers;
  begin
    aClasse := lireStringRam(9);
    pClasse := lireStringRam(4);
    if (pClasse = 'Guerrier') or (pClasse = 'Hybride') then efficaciteCACPers;
    if (pClasse = 'Rodeur') or (pClasse = 'Vampire') then efficaciteDistPers;
    if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then efficaciteMagPers;
    ecrireIntegerRam(64,efficacitePers);
  end;


procedure efficaciteCACPers;
  begin
      if (aClasse = 'Guerrier') or (aClasse = 'Hybride') then efficacitePers := 2;
      if (aClasse = 'Rodeur') or (aClasse = 'Vampire') then efficacitePers := 4;
      if (aClasse = 'Mage') or (aClasse = 'Mage Noir') then efficacitePers := 1;
  end;


procedure efficaciteDistPers;
  begin
      if (aClasse = 'Guerrier') or (aClasse = 'Hybride') then efficacitePers := 1;
      if (aClasse = 'Rodeur') or (aClasse = 'Vampire') then efficacitePers := 2;
      if (aClasse = 'Mage') or (aClasse = 'Mage Noir') then efficacitePers := 4;
  end;


procedure efficaciteMagPers;
  begin
      if (aClasse = 'Guerrier') or (aClasse = 'Hybride') then efficacitePers := 4;
      if (aClasse = 'Rodeur') or (aClasse = 'Vampire') then efficacitePers := 1;
      if (aClasse = 'Mage') or (aClasse = 'Mage Noir') then efficacitePers := 2;
  end;
end.
