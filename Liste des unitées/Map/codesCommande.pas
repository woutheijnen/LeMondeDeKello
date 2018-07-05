unit codesCommande;

interface
  uses
    Sysutils,
    ram,
    sauvegarder,
    verificationCoordonneesMap,
    dataMouvement,
    dataTriche,
    galackData,
    interfaceJeu;


//Header
  procedure commande;


implementation
//Procédure des différentes commandes lors sur le map -------------------------
procedure commande;
  begin
    write(' Ma réponse: > ');readln(choix);
    utiliserOutilsDev := lireIntegerRam(72);

    if (choix = 'z') or (choix = 'Z') or (choix = 'NORD') or (choix = 'nord') then mouvNord;
    if (choix = 's') or (choix = 'S') or (choix = 'SUD') or (choix = 'sud') then mouvSud;
    if (choix = 'q') or (choix = 'Q') or (choix = 'OUEST') or (choix = 'ouest') then mouvOuest;
    if (choix = 'd') or (choix = 'D') or (choix = 'EST') or (choix = 'est') then mouvEst;

    if ((choix = 'g') or (choix = 'G') or (choix = 'GALACK') or (choix = 'galack'))
      and (galackMap = nbMap) and ((galackX + 1 = joueurX) or (galackX - 1 = joueurX) or
      (galackY + 1 = joueurY) or (galackY - 1 = joueurY)) then parlerGalack;

    if ((choix = 'debug') and (utiliserOutilsDev = 1)) then debug;
    if ((choix = 'tele') and (utiliserOutilsDev = 1)) then tele;

    if ((choix = 'w') or (choix = 'W')) then verifTile;
    if ((choix = 'x') or (choix = 'X')) then menuJeu;

    if ((choix = 'combat') and (utiliserOutilsDev = 1)) then genererCombat;
    if ((choix = 'travmur') and (utiliserOutilsDev = 1)) then traverserLesMurs;
    if ((choix = 'donnerobjet') and (utiliserOutilsDev = 1)) then donnerObjet;

    ecrireStringRam(0, choix);
  end;
end.
