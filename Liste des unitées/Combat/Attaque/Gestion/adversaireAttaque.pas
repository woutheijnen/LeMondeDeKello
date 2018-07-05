unit adversaireAttaque;

interface
  uses
    Sysutils,
    ram,
    effAdv,
    adversaireAttaqueGuerrier,
    adversaireAttaqueRodeur,
    adversaireAttaqueMage,
    adversaireAttaqueVampire,
    adversaireAttaqueHybride,
    formuleVitesse,
    formulePvRestant,
    genererNombreAleatoire;


  var
    degatPersTot, degatAdvTot: Integer;
{Contiens combien degat le joueur/adversaire va prendre par le joueur/adversaire et le total des dégats.}
    vitessePers: Integer;
{Contiens ls stats de vitesse du joueur qui vont dépendre de qui gagne si les 2
seront KO dans cette tour. (Le plus vite gagne)}


//Header
  procedure advAttaque;


implementation
//Procédure d´un attaque de votre adversaire ----------------------------------
procedure advAttaque;
  begin
    soinAdv := 0;
    ecrireIntegerRam(51, soinAdv);
    pvAdvActuel := lireIntegerRam(41);
    if (pvAdvActuel < 1) then exit;

    defEfficaciteAdv;

    if (aClasse = 'Guerrier') then advAttGuerrier;
    if (aClasse = 'Rodeur') then advAttRodeur;
    if (aClasse = 'Mage') or (aClasse = 'Mage Noir')then advAttMage;
    if (aClasse = 'Vampire') then advAttVampire;
    if (aClasse = 'Hybride') then advAttHybride;                

    degatPers := lireIntegerRam(57);
    degatPers2 := lireIntegerRam(59);
    degatPersTot := degatPers + degatPers2;
    ecrireIntegerRam(50, degatPersTot);
    degatAdv := lireIntegerRam(58);
    degatAdv2 := lireIntegerRam(60);
    degatAdvTot := degatAdv + degatAdv2;
    ecrireIntegerRam(49, degatAdvTot);

    vitessePers := calculVitessePers;
    vitesseAdv := lireIntegerRam(45);

    if (vitessePers = vitesseAdv) then
      begin
        aleatoire(0,2);
        if (alea = 0) then vitesseAdv := vitesseAdv + 1
          else vitesseAdv := vitesseAdv - 1;
      end;

    if vitessePers > vitesseAdv then joueurPlusRapide
      else adversairePlusRapide;
  end;
end.
