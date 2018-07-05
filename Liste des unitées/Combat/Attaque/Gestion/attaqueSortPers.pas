unit attaqueSortPers;

interface
  uses
    Sysutils,
    ram,
    adversaireAttaque,
    sortBouleDeFeu,
    sortGlaciation,
    sortBlizzard,
    sortHydroblast,
    sortOndeDeChoc,
    sortTornade,
    sortSoignage,
    sortJetDeFeu,
    sortSeisme,
    sortAeroblast,
    sortFeuSacre,
    sortBouleOmbre,
    sortCorruption,
    sortTenebres,
    sortOndeNoire,
    sortTyphonNoir,
    sortBouleDeSang,
    sortMalediction,
    sortAntiSoin,
    sortSacrifice,
    sortFeuEnfer,
    sortChuteNoire;


//Header
  procedure persAttaqueSort;


implementation
procedure persAttaqueSort;
  begin
    sortPers := lireStringRam(25);
    if (sortPers = 'Boule de Feu') then bouleDeFeuPers;
    if (sortPers = 'Glaciation') then glaciationPers;
    if (sortPers = 'Blizzard') then blizzardPers;
    if (sortPers = 'Hydroblast') then hydroblastPers;
    if (sortPers = 'Onde de Choc') then ondeDeChocPers;
    if (sortPers = 'Tornade') then tornadePers;
    if (sortPers = 'Soignage') then soignagePers;
    if (sortPers = 'Jet de Feu') then jetDeFeuPers;
    if (sortPers = 'Séisme') then seismePers;
    if (sortPers = 'Aéroblast') then aeroblastPers;
    if (sortPers = 'Feu Sacré') then feuSacrePers;
    if ((sortPers = 'Boule d''Ombre') or (sortPers = 'Boule d´Ombre')) then bouleOmbrePers;
    if (sortPers = 'Corruption') then corruptionPers;
    if (sortPers = 'Ténèbres') then tenebresPers;
    if (sortPers = 'Onde Noire') then ondeNoirePers;
    if (sortPers = 'Typhon Noir') then typhonNoirPers;
    if (sortPers = 'Boule de Sang') then bouleDeSangPers;
    if (sortPers = 'Malédiction') then maledictionPers;
    if (sortPers = 'Anti-Soin') then antiSoinPers;
    if (sortPers = 'Sacrifice') then sacrificePers;
    if ((sortPers = 'Feu d''Enfer') or (sortPers = 'Feu d´Enfer')) then feuEnferPers;
    if (sortPers = 'Chute Noire') then chuteNoirePers;
    advAttaque;
  end;
end.
