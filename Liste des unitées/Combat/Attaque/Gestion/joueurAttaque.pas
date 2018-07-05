unit joueurAttaque;

interface
  uses
    Sysutils,
    ram,
    adversaireAttaque,
    joueurAttaqueGuerrier,
    joueurAttaqueRodeur,
    joueurAttaqueMage,
    joueurAttaqueVampire;

//Header
  procedure persAttaque;


implementation
procedure persAttaque;
    begin
      pClasse := lireStringRam(4);
      if (pClasse = 'Guerrier') then persAttGuerrier;
      if (pClasse = 'Rodeur') then persAttRodeur;
      if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then persAttMage;
      if (pClasse = 'Vampire') then persAttVampire;
      if (pClasse = 'Hybride') then persAttGuerrier;
      advAttaque;
    end;
end.
