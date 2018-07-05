unit jeu;

interface
  uses
    Sysutils,
    map,
    codesCommande,
    ram,
    defineValsPers;


//Header
  procedure demarJeu;


implementation
procedure demarJeu;
  begin
    pClasse := lireStringRam(4);
    if (pClasse = 'Guerrier') then defineValsPersGuerrier;
    if (pClasse = 'Rodeur') then defineValsPersRodeur;
    if (pClasse = 'Mage') then defineValsPersMage;
    if (pClasse = 'Mage Noir') then defineValsPersMageNoir;
    if (pClasse = 'Vampire') then defineValsPersVampire;
    if (pClasse = 'Hybride') then defineValsPersHybride;

    if nbMap = 1 then mapAnim;

    mapMusique;

    repeat
      quitter := lireIntegerRam(25);
      mapData;
      chargeMap;
      commande;
    until quitter = 1;

  end;
end.
