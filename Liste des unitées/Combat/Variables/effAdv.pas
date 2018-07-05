unit effAdv;

interface
  uses
    Sysutils,
    ram;


//Header
  procedure defEfficaciteAdv;
  procedure efficaciteCACAdv;
  procedure efficaciteDistAdv;
  procedure efficaciteMagAdv;


implementation
procedure defEfficaciteAdv;
  begin
    aClasse := lireStringRam(9);
    pClasse := lireStringRam(4);
    if (aClasse = 'Guerrier') or (aClasse = 'Hybride') then efficaciteCACAdv;
    if (aClasse = 'Rodeur') or (aClasse = 'Vampire') then efficaciteDistAdv;
    if (aClasse = 'Mage') or (aClasse = 'Mage Noir') then efficaciteMagAdv;
    ecrireIntegerRam(53,efficaciteAdv);
  end;


procedure efficaciteCACAdv;
  begin
      if (pClasse = 'Guerrier') or (pClasse = 'Hybride') then efficaciteAdv := 2;
      if (pClasse = 'Rodeur') or (pClasse = 'Vampire') then efficaciteAdv := 4;
      if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then efficaciteAdv := 1;
  end;


procedure efficaciteDistAdv;
  begin
      if (pClasse = 'Guerrier') or (pClasse = 'Hybride') then efficaciteAdv := 1;
      if (pClasse = 'Rodeur') or (pClasse = 'Vampire') then efficaciteAdv := 2;
      if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then efficaciteAdv := 4;
  end;


procedure efficaciteMagAdv;
  begin
      if (pClasse = 'Guerrier') or (pClasse = 'Hybride') then efficaciteAdv := 4;
      if (pClasse = 'Rodeur') or (pClasse = 'Vampire') then efficaciteAdv := 1;
      if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then efficaciteAdv := 2;
  end;
end.
