unit ram;

interface
  uses
    SysUtils;


  var
    alea: Integer;
{Les nombres aléatoires sont temporairement stoquées ici.}
    choix: String;
{Permet d´enregistrer de facon temporaire le choix de l´utilisateur.}
    diff: String;
    valDiff, orDiff: Integer;
{Contient la niveau de difficulté choisi, et les valeurs attribuées à cette difficulté.}
    joueurAsp: String[1];
{Contient la caractère représentant le joueur.}
    joueurX: Integer;
    joueurY: Integer;
{Contient la coordonné du joueur.}
    nbMap: Integer;
{Contient la numéro du map.}
    galack: Integer;
{Si se valeur est à 1, Galack suis le joueur sinon non.}
    galackX, galackY, galackMap: Integer;
{Contiens les coordonnées de Galack et sur quelle map il est}
    blocade, travMur: Integer;
{Si ce valeur est a 1, le joueur ne peut pas avancer. Ce valeur ce met a 1 grace à la procédure mapAspect
dans l'unité map et est utilisé pour ne pas traverser les murs.
Parcontre si travMur = 1 blocade sera ignoré et tout les murs seront traversibles.}
    nivCombat: Integer;
    nivMinier: Integer;
    nivCoupe: Integer;
    nivPeche: Integer;
    nivCuisine: Integer;
    nivVolle: Integer;
    nivEmpennage: Integer;
    nivForge: Integer;
    nivEtude: Integer;
    xpCombat: Integer;
    xpPeche: Integer;
    xpCoupe: Integer;
    xpMinier: Integer;
    xpForge: Integer;
    xpEtude: Integer;
    xpEmpennage: Integer;
    xpCuisine: Integer;
    pvPersActuel: Integer;
{Contient les niveaux avec le xp j'usqu'au prochain niveau du joueur, ses pv actuel/max puis son attaque, defense, vitesse.}
    xpGagne, orGagne: Integer;
{Contiens combien de xp et d'or le joueur viens de gagner.}
    msgNiv: Integer;
{Est à 0 si pas de message de "nouveau niveau" doit être affiché et sinon elle est à 1.}
    nom: String[10];
{Contient le nom du joueur.}
    nbOr: Integer;
{Contiens la quantité d'or le joueur a.}
    pClasse, aClasse: String;
{Contient la classe du joueur et de son adversaire (p = perso, a = adversaire).}
    pvAdvActuel: Integer;
{Contient combien de pv l'adversaire a en ce moment.}
    barrePvVisuelAdv, barrePvVisuelPers: String;
{Contient la partie visuel du barre de pv utilisé dans les combats et les écrans de statut.}
    coulPvAdv, coulPvPers: Integer;
{Contient la constante de couleur qui doit être attribué à la barre de pv}
    sexe: String[1];
{Contient le sexe du joueur.}
    choisirSort: Integer;
{Si ce valeur est a 1, l'écran de combat charge la partie pour choisir un sort, sinon si elle est a 0
il ne le charge pas.}
    sort1, sort2, sort3, sort4, sortPers: String;
{Contient les sorts que le joueur connais si le joueur est un Mage ou un Mage Noir.
sortPers contiens le sort choisi par le joueur comme attaque.}
    sort1Adv, sort2Adv, sort3Adv, sort4Adv, sortAdv: String;
{Pareil pour sort1, sort2, etc sauf pour l'adversaire.}
    pouvSortPers, pouvSortAdv: Integer;
{Contiens la pouvoir du sort lancé sur l'adversaire par le joueur et sur le joueur par l'adversaire.}
    pouvArmeAdv, pouvArmePers: Integer;
{Contiens le pouvoir de l'arme du adversaire et du joueur.}
    efficacitePers, efficaciteAdv: Integer;
{Valeur qui varie selon un attaque super efficace ou inefficace qui se calcule avec aClasse et pClasse.}
    valAdvAtt, valAdvDef, valAdvVit, valAdvPv: Integer;
{Contient les valeurs de bases des adversaires pour pouvoir effectuer les calculs de pv, attaque etc
des adversaires. Ces valeurs changent selon la classe du adversaire (aClasse).}
    pvAdvMax, attaqueAdv, defenseAdv, vitesseAdv, nivAdv: Integer;
{Contient les stats de l'adversaire calculées.}
    nomAdv: String;
{Contient le nom de l'adversaire.}
    valClasseAtt, valClasseDef, valClasseVit, valClassePv: Integer;
{Contient les valeurs de bases par rapport au classe du joueur.}
    degatPers, degatPers2, degatAdv, degatAdv2: Integer;
{Contient les degats fait sur le joueur/adversaire par le joueur/adversaire.}
    degatTotAdv, degatTotPers, soinAdv, soinPers: Integer;
{Contient la somme de degat le joueur a fait et l'adversaire a fait et le soin qui à été fait par
le joueur/adversaire en un tour.}
    statutAdv, statutPers: String;
{Contient le statut présent pour l'adversaire et le joueur.}
    viAttaque, viDefense, viVitesse, viPv: Integer;
{VI = Valeur individuel - c'est un valeur généré aléatoirement entre 0 et 31 qui influence légèrement
les stats du joueur.}
    veAttaque, veDefense, veVitesse, vePv: Integer;
{VE = Valeur d'effort - c'est un valeur qui influence légèrement les stats et peuvent être augmentées
en buvant des potions spéciaux.}
    fuireEssai, fuireReussi: Integer;
{Contiens le nombre de fois le joueur a essayé de fuire du combat et si il a réussi si fuireReussi = 1
ou pas si fuireReussi = 0.}
    sortieForet: Integer;
{Contiens ou la sortie du foret est pour passer à la partie suivante.}
    queteJimmy, jimmyMort, recomJimmy: Integer;
{Si se valeur est à 1, la quete "Jimmy" à été accepté par le joueur. Se valeur permet de combattre Jimmy et
de le tuer.
jimmyMort indique si le joueur a tué Jimmy (1) ou non (0)
recomJimmy signifie si la récompense à été réclamé ou pas.}
    queteBob, ferRestantQuete: Integer;
{Signifie si le joueur a démarré la quete de bob (1) ou non(0) et si le joueur a réclamé la récompense (2)
ferRestantQuete contiens combien de fer le joueur doit encore donner à bob}
    objet1, objet2, objet3, objet4, objet5, objet6, objet7, objet8, objet9, objet10: String;
{Ses variables contiennent ce que le joueur a comme objets dans son sac.}
    text1, text2, text3, text4, text5, text6, text7, text8, text9, text10: String;
{Contient une ligne de texte à afficher lors du prochain interface.}
    temp: String;
{Variable temporaire utilisé pour quitter du menu et pour savoir quelle procédure doit être executé après
l'écran de confirmation dans le menu.}
    quitter: Integer;
{Utilisé pour revenir au menu principal depuis la map.}
    utiliserOutilsDev: Integer;
{Valeur mis à 0 ou à 1 avant la compilation. Permet d'autoriser des commandes de triche et de débugage
divers si se valeur est à 1.}


//Header
  procedure ecrireIntegerRam(nbVariable : Integer; data: Integer);
  procedure ecrireStringRam(nbVariable : Integer; data2: String);
  function lireIntegerRam(nbVariable : Integer): Integer;
  function lireStringRam(nbVariable : Integer): String;


implementation
  procedure ecrireIntegerRam(nbVariable : Integer; data: Integer);
    begin
      case nbVariable of
        0: alea := data;
        1: nivCombat := data;
        2: nivMinier := data;
        3: nivCoupe := data;
        4: nivPeche := data;
        5: nivCuisine := data;
        6: nivEmpennage := data;
        7: nivForge := data;
        8: nivEtude := data;
        9: pvPersActuel := data;
        10: valClasseAtt := data;
        11: valClasseDef := data;
        12: valClasseVit := data;
        13: valClassePv := data;
        14: nbMap := data;
        15: joueurX := data;
        16: joueurY := data;
        17: viAttaque := data;
        18: viDefense := data;
        19: viVitesse := data;
        20: viPv := data;
        21: veAttaque := data;
        22: veDefense := data;
        23: veVitesse := data;
        24: vePv := data;
        25: quitter := data;
        26: xpCombat := data;
        27: xpPeche := data;
        28: xpCoupe := data;
        29: xpMinier := data;
        30: xpForge := data;
        31: xpEtude := data;
        32: xpEmpennage := data;
        33: xpCuisine := data;
        34: valDiff := data;
        35: queteBob := data;
        36: orDiff := data;
        37: valAdvAtt := data;
        38: valAdvDef := data;
        39: valAdvVit := data;
        40: valAdvPv := data;
        41: pvAdvActuel := data;
        42: pvAdvMax := data;
        43: attaqueAdv := data;
        44: defenseAdv := data;
        45: vitesseAdv := data;
        46: coulPvAdv := data;
        47: coulPvPers := data;
        48: nivAdv := data;
        49: degatTotAdv := data;
        50: degatTotPers := data;
        51: soinAdv := data;
        52: soinPers := data;
        53: efficaciteAdv := data;
        54: pouvSortAdv := data;
        55: msgNiv := data;
        56: nbOr := data;
        57: degatPers := data;
        58: degatAdv := data;
        59: degatPers2 := data;
        60: degatAdv2 := data;
        61: xpGagne := data;
        62: orGagne := data;
        63: pouvSortPers := data;
        64: efficacitePers := data;
        65: pouvArmeAdv := data;
        66: pouvArmePers := data;
        67: choisirSort := data;
        68: fuireEssai := data;
        69: fuireReussi := data;
        70: blocade := data;
        71: travMur := data;
        72: utiliserOutilsDev := data;
        73: galackX := data;
        74: galackY := data;
        75: galack := data;
        76: galackMap := data;
        77: sortieForet := data;
        78: queteJimmy := data;
        79: jimmyMort := data;
        80: recomJimmy := data;
        81: ferRestantQuete := data;
      end;
    end;


  procedure ecrireStringRam(nbVariable : Integer; data2: String);
    begin
      case nbVariable of
        0: choix := data2;
        1: nom := data2;
        2: sexe := data2;
        3: joueurAsp := data2;
        4: pClasse := data2;
        5: sort1 := data2;
        6: sort2 := data2;
        7: sort3 := data2;
        8: sort4 := data2;
        9: aClasse := data2;
        10: diff := data2;
        11: barrePvVisuelAdv := data2;
        12: barrePvVisuelPers := data2;
        13: nomAdv := data2;
        14: statutAdv := data2;
        15: statutPers := data2;
        16: text1 := data2;
        17: text2 := data2;
        18: text3 := data2;
        19: text4 := data2;
        20: sortAdv := data2;
        21: sort1Adv := data2;
        22: sort2Adv := data2;
        23: sort3Adv := data2;
        24: sort4Adv := data2;
        25: sortPers := data2;
        26: text5 := data2;
        27: text6 := data2;
        28: text7 := data2;
        29: text8 := data2;
        30: text9 := data2;
        31: text10 := data2;
        32: temp := data2;
        33: objet1 := data2;
        34: objet2 := data2;
        35: objet3 := data2;
        36: objet4 := data2;
        37: objet5 := data2;
        38: objet6 := data2;
        39: objet7 := data2;
        40: objet8 := data2;
        41: objet9 := data2;
        42: objet10 := data2;
      end;
    end;


  function lireIntegerRam(nbVariable : Integer): Integer;
    begin
      case nbVariable of
        0: lireIntegerRam := alea;
        1: lireIntegerRam := nivCombat;
        2: lireIntegerRam := nivMinier;
        3: lireIntegerRam := nivCoupe;
        4: lireIntegerRam := nivPeche;
        5: lireIntegerRam := nivCuisine;
        6: lireIntegerRam := nivEmpennage;
        7: lireIntegerRam := nivForge;
        8: lireIntegerRam := nivEtude;
        9: lireIntegerRam := pvPersActuel;
        10: lireIntegerRam := valClasseAtt;
        11: lireIntegerRam := valClasseDef;
        12: lireIntegerRam := valClasseVit;
        13: lireIntegerRam := valClassePv;
        14: lireIntegerRam := nbMap;
        15: lireIntegerRam := joueurX;
        16: lireIntegerRam := joueurY;
        17: lireIntegerRam := viAttaque;
        18: lireIntegerRam := viDefense;
        19: lireIntegerRam := viVitesse;
        20: lireIntegerRam := viPv;
        21: lireIntegerRam := veAttaque;
        22: lireIntegerRam := veDefense;
        23: lireIntegerRam := veVitesse;
        24: lireIntegerRam := vePv;
        25: lireIntegerRam := quitter;
        26: lireIntegerRam := xpCombat;
        27: lireIntegerRam := xpPeche;
        28: lireIntegerRam := xpCoupe;
        29: lireIntegerRam := xpMinier;
        30: lireIntegerRam := xpForge;
        31: lireIntegerRam := xpEtude;
        32: lireIntegerRam := xpEmpennage;
        33: lireIntegerRam := xpCuisine;
        34: lireIntegerRam := valDiff;
        35: lireIntegerRam := queteBob;
        36: lireIntegerRam := orDiff;
        37: lireIntegerRam := valAdvAtt;
        38: lireIntegerRam := valAdvDef;
        39: lireIntegerRam := valAdvVit;
        40: lireIntegerRam := valAdvPv;
        41: lireIntegerRam := pvAdvActuel;
        42: lireIntegerRam := pvAdvMax;
        43: lireIntegerRam := attaqueAdv;
        44: lireIntegerRam := defenseAdv;
        45: lireIntegerRam := vitesseAdv;
        46: lireIntegerRam := coulPvAdv;
        47: lireIntegerRam := coulPvPers;
        48: lireIntegerRam := nivAdv;
        49: lireIntegerRam := degatTotAdv;
        50: lireIntegerRam := degatTotPers;
        51: lireIntegerRam := soinAdv;
        52: lireIntegerRam := soinPers;
        53: lireIntegerRam := efficaciteAdv;
        54: lireIntegerRam := pouvSortAdv;
        55: lireIntegerRam := msgNiv;
        56: lireIntegerRam := nbOr;
        57: lireIntegerRam := degatPers;
        58: lireIntegerRam := degatAdv;
        59: lireIntegerRam := degatPers2;
        60: lireIntegerRam := degatAdv2;
        61: lireIntegerRam := xpGagne;
        62: lireIntegerRam := orGagne;
        63: lireIntegerRam := pouvSortPers;
        64: lireIntegerRam := efficacitePers;
        65: lireIntegerRam := pouvArmeAdv;
        66: lireIntegerRam := pouvArmePers;
        67: lireIntegerRam := choisirSort;
        68: lireIntegerRam := fuireEssai;
        69: lireIntegerRam := fuireReussi;
        70: lireIntegerRam := blocade;
        71: lireIntegerRam := travMur;
        72: lireIntegerRam := utiliserOutilsDev;
        73: lireIntegerRam := galackX;
        74: lireIntegerRam := galackY;
        75: lireIntegerRam := galack;
        76: lireIntegerRam := galackMap;
        77: lireIntegerRam := sortieForet;
        78: lireIntegerRam := queteJimmy;
        79: lireIntegerRam := jimmyMort;
        80: lireIntegerRam := recomJimmy;
        81: lireIntegerRam := ferRestantQuete;
      end;
    end;


  function lireStringRam(nbVariable : Integer): String;
    begin
      case nbVariable of
        0: lireStringRam := choix;
        1: lireStringRam := nom;
        2: lireStringRam := sexe;
        3: lireStringRam := joueurAsp;
        4: lireStringRam := pClasse;
        5: lireStringRam := sort1;
        6: lireStringRam := sort2;
        7: lireStringRam := sort3;
        8: lireStringRam := sort4;
        9: lireStringRam := aClasse;
        10: lireStringRam := diff;
        11: lireStringRam := barrePvVisuelAdv;
        12: lireStringRam := barrePvVisuelPers;
        13: lireStringRam := nomAdv;
        14: lireStringRam := statutAdv;
        15: lireStringRam := statutPers;
        16: lireStringRam := text1;
        17: lireStringRam := text2;
        18: lireStringRam := text3;
        19: lireStringRam := text4;
        20: lireStringRam := sortAdv;
        21: lireStringRam := sort1Adv;
        22: lireStringRam := sort2Adv;
        23: lireStringRam := sort3Adv;
        24: lireStringRam := sort4Adv;
        25: lireStringRam := sortPers;
        26: lireStringRam := text5;
        27: lireStringRam := text6;
        28: lireStringRam := text7;
        29: lireStringRam := text8;
        30: lireStringRam := text9;
        31: lireStringRam := text10;
        32: lireStringRam := temp;
        33: lireStringRam := objet1;
        34: lireStringRam := objet2;
        35: lireStringRam := objet3;
        36: lireStringRam := objet4;
        37: lireStringRam := objet5;
        38: lireStringRam := objet6;
        39: lireStringRam := objet7;
        40: lireStringRam := objet8;
        41: lireStringRam := objet9;
        42: lireStringRam := objet10;
      end;
    end;
end.
