unit minageText;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    gestionEcran,
    ram,
    sac;


  var
    matiere: String;
{Contiens la matière que le joueur viens de miner.}
    text: String;
{Contiens la texte à afficher.}


//Header
  function demarMinage: String;


implementation
function demarMinage;
  begin
    aleatoire(0,10000);
    attendre(lireIntegerRam(0));
    objet1 := lireStringRam(33);
    objet2 := lireStringRam(34);
    objet3 := lireStringRam(35);
    objet4 := lireStringRam(36);
    objet5 := lireStringRam(37);
    objet6 := lireStringRam(38);
    objet7 := lireStringRam(39);
    objet8 := lireStringRam(40);
    objet9 := lireStringRam(41);
    objet10 := lireStringRam(42);
    nivMinier := lireIntegerRam(2);

    pClasse := lireStringRam(4);
    if ((pClasse = 'Guerrier') or (pClasse = 'Hybride')) then nbObjetMax := 10
    else nbObjet := 6;

    if ((nivMinier >= 0) and (nivMinier < 10)) then
    begin
      aleatoire(0,3);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 10xp';
        xpMinier := xpMinier - 10;
        matiere := 'Argile';
        end;
    end;

    if ((nivMinier >= 10) and (nivMinier < 30)) then
    begin
      aleatoire(0,4);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 10xp';
        xpMinier := xpMinier - 10;
        matiere := 'Argile';
        end;
      if lireIntegerRam(0) = 3 then
        begin
        demarMinage := '   Vous venez de miner du fer, vous gagnez 60xp';
        xpMinier := xpMinier - 60;
        matiere := 'Fer';
        end;
    end;

        if ((nivMinier >= 30) and (nivMinier <= 50)) then
    begin
      aleatoire(0,5);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 10xp';
        xpMinier := xpMinier - 10;
        matiere := 'Argile';
        end;
      if lireIntegerRam(0) = 3 then
        begin
        demarMinage := '   Vous venez de miner du fer, vous gagnez 60xp';
        xpMinier := xpMinier - 70;
        matiere := 'Fer';
        end;
      if lireIntegerRam(0) = 4 then
        begin
        demarMinage := '   Vous venez de miner du charbon, vous gagnez 150xp';
        xpMinier := xpMinier - 150;
        matiere := 'Charbon';
        end;
    end;

    if ((nivMinier >= 50) and (nivMinier <= 70)) then
    begin
      aleatoire(0,6);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 10xp';
        xpMinier := xpMinier - 10;
        matiere := 'Argile';
        end;
      if lireIntegerRam(0) = 3 then
        begin
        demarMinage := '   Vous venez de miner du fer, vous gagnez 60xp';
        xpMinier := xpMinier - 70;
        matiere := 'Fer';
        end;
      if lireIntegerRam(0) = 4 then
        begin
        demarMinage := '   Vous venez de miner du charbon, vous gagnez 150xp';
        xpMinier := xpMinier - 150;
        matiere := 'Charbon';
        end;
      if lireIntegerRam(0) = 5 then
        begin
        demarMinage := '   Vous venez de miner de l´or, vous gagnez 400xp';
        xpMinier := xpMinier - 400;
        matiere := 'Or';
        end;
    end;

    if ((nivMinier >= 70) and (nivMinier <= 95)) then
    begin
      aleatoire(0,7);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 10xp';
        xpMinier := xpMinier - 10;
        matiere := 'Argile';
        end;
      if lireIntegerRam(0) = 3 then
        begin
        demarMinage := '   Vous venez de miner du fer, vous gagnez 60xp';
        xpMinier := xpMinier - 70;
        matiere := 'Fer';
        end;
      if lireIntegerRam(0) = 4 then
        begin
        demarMinage := '   Vous venez de miner du charbon, vous gagnez 150xp';
        xpMinier := xpMinier - 150;
        matiere := 'Charbon';
        end;
      if lireIntegerRam(0) = 5 then
        begin
        demarMinage := '   Vous venez de miner de l´or, vous gagnez 400xp';
        xpMinier := xpMinier - 400;
        matiere := 'Or';
        end;
      if lireIntegerRam(0) = 6 then
        begin
        demarMinage := '   Vous venez de miner de l´adamantite, vous gagnez 2500xp';
        xpMinier := xpMinier - 2500;
        matiere := 'Adamantite';
        end;
    end;

    if (nivMinier >= 95) then
    begin
      aleatoire(0,8);
      if lireIntegerRam(0) = 0 then
        begin
        demarMinage := '   Vous venez de miner de l´étain, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Etain';
        end;
      if lireIntegerRam(0) = 1 then
        begin
        demarMinage := '   Vous venez de miner du cuivre, vous gagnez 35xp.';
        xpMinier := xpMinier - 35;
        matiere := 'Cuivre';
        end;
      if lireIntegerRam(0) = 2 then
        begin
        demarMinage := '   Vous venez de miner de l´argile, vous gagnez 5xp';
        xpMinier := xpMinier - 5;
        matiere := 'Argile';
        end;
      if lireIntegerRam(0) = 3 then
        begin
        demarMinage := '   Vous venez de miner du fer, vous gagnez 70xp';
        xpMinier := xpMinier - 70;
        matiere := 'Fer';
        end;
      if lireIntegerRam(0) = 4 then
        begin
        demarMinage := '   Vous venez de miner du charbon, vous gagnez 150xp';
        xpMinier := xpMinier - 150;
        matiere := 'Charbon';
        end;
      if lireIntegerRam(0) = 5 then
        begin
        demarMinage := '   Vous venez de miner de l´or, vous gagnez 400xp';
        xpMinier := xpMinier - 400;
        matiere := 'Or';
        end;
      if lireIntegerRam(0) = 6 then
        begin
        demarMinage := '   Vous venez de miner de l´adamantite, vous gagnez 2500xp';
        xpMinier := xpMinier - 2500;
        matiere := 'Adamantite';
        end;
      if lireIntegerRam(0) = 7 then
        begin
        demarMinage := '   Vous venez de miner de l´ultimum, vous gagnez 12500xp';
        xpMinier := xpMinier - 12500;
        matiere := 'Ultimum';
        end;
    end;

      if objet1 = '' then objet1 := matiere
      else if objet2 = '' then objet2 := matiere
      else if objet3 = '' then objet3 := matiere
      else if objet4 = '' then objet4 := matiere
      else if objet5 = '' then objet5 := matiere
      else if objet6 = '' then objet6 := matiere
      else if ((objet7 = '') and (nbObjetMax = 10)) then objet7 := matiere
      else if ((objet8 = '') and (nbObjetMax = 10)) then objet8 := matiere
      else if ((objet9 = '') and (nbObjetMax = 10)) then objet9 := matiere
      else if ((objet10 = '') and (nbObjetMax = 10)) then objet10 := matiere
      else
        begin
        if matiere = 'Etain' then text10 := 'Votre sac est plein! Vous jettez l´étain par terre!';
        if matiere = 'Cuivre' then text10 := 'Votre sac est plein! Vous jettez le cuivre par terre!';
        if matiere = 'Etain' then text10 := 'Votre sac est plein! Vous jettez l´argile par terre!';
        if matiere = 'Fer' then text10 := 'Votre sac est plein! Vous jettez le fer par terre!';
        if matiere = 'Charbon' then text10 := 'Votre sac est plein! Vous jettez le charbon par terre!';
        if matiere = 'Or' then text10 := 'Votre sac est plein! Vous jettez l´or par terre!';
        if matiere = 'Adamantite' then text10 := 'Votre sac est plein! Vous jettez l´adamantite par terre!';
        if matiere = 'Ultimum' then text10 := 'Votre sac est plein! Vous jettez l´ultimum par terre!';
        end;

    ecrireStringRam(33, objet1);
    ecrireStringRam(34, objet2);
    ecrireStringRam(35, objet3);
    ecrireStringRam(36, objet4);
    ecrireStringRam(37, objet5);
    ecrireStringRam(38, objet6);
    ecrireStringRam(39, objet7);
    ecrireStringRam(40, objet8);
    ecrireStringRam(41, objet9);
    ecrireStringRam(42, objet10);

    ecrireStringRam(31, text10);
    ecrireIntegerRam(29, xpMinier);
  end;
end.
