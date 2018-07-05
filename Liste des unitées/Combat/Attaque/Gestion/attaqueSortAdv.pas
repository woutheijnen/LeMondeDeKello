unit attaqueSortAdv;

interface
  uses
    Sysutils,
    sortBouleDeFeu,
    sortGlaciation,
    genererNombreAleatoire,
    ram,
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
  procedure advAttaqueSort;


implementation
//Procédure d´un sort de votre adversaire -------------------------------------
procedure advAttaqueSort;
  begin
    sortAdv := lireStringRam(20);
    if (sortAdv = 'Boule de Feu') then bouleDeFeuAdv;
    if (sortAdv = 'Glaciation') then glaciationAdv;
    if (sortAdv = 'Blizzard') then blizzardAdv;
    if (sortAdv = 'Hydroblast') then hydroblastAdv;
    if (sortAdv = 'Onde de Choc') then ondeDeChocAdv;
    if (sortAdv = 'Tornade') then tornadeAdv;
    if (sortAdv = 'Soignage') then soignageAdv;
    if (sortAdv = 'Jet de Feu') then jetDeFeuAdv;
    if (sortAdv = 'Séisme') then seismeAdv;
    if (sortAdv = 'Aéroblast') then aeroblastAdv;
    if (sortAdv = 'Feu Sacré') then feuSacreAdv;
    if ((sortAdv = 'Boule d''Ombre') or (sortAdv = 'Boule d´Ombre')) then bouleOmbreAdv;
    if (sortAdv = 'Corruption') then corruptionAdv;
    if (sortAdv = 'Ténèbres') then tenebresAdv;
    if (sortAdv = 'Onde Noire') then ondeNoireAdv;
    if (sortAdv = 'Typhon Noir') then typhonNoirAdv;
    if (sortAdv = 'Boule de Sang') then bouleDeSangAdv;
    if (sortAdv = 'Malédiction') then maledictionAdv;
    if (sortAdv = 'Anti-Soin') then antiSoinAdv;
    if (sortAdv = 'Sacrifice') then sacrificeAdv;
    if ((sortAdv = 'Feu d''Enfer') or (sortAdv = 'Feu d´Enfer')) then feuEnferAdv;
    if (sortAdv = 'Chute Noire') then chuteNoireAdv;
  end;
end.
