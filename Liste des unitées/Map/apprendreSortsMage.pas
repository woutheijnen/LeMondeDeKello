unit apprendreSortsMage;

interface
  uses
    Sysutils,
    ram,
    gestionEcran,
    insererLignes;


  var
    nouvSort: String;
{Contiens le nouveau sort à apprendre.}


//Header
  procedure apprendreSort;
  procedure pasAssezArgentSort;


implementation
procedure pasAssezArgentSort;
  begin
    nbOr := lireIntegerRam(56);

    effacerEcran;
    lignes(8);
    writeln('                      -------------------------------------');
    lignes(1);
    writeln('                           Vous n´avez pas assez d´or.');
    lignes(1);
    writeln('                            Vous avez ',nbOr,' or.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;


procedure apprendreSort;
  begin
    pClasse := lireStringRam(4);
    temp := lireStringRam(0);

    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '1')) then nouvSort := 'Boule de Feu';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '2')) then nouvSort := 'Soignage';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '3')) then nouvSort := 'Tornade';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '4')) then nouvSort := 'Onde de Choc';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '5')) then nouvSort := 'Jet de Feu';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '6')) then nouvSort := 'Blizzard';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '7')) then nouvSort := 'Séisme';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '8')) then nouvSort := 'Hydroblast';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '9')) then nouvSort := 'Glaciation';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '10')) then nouvSort := 'Aéroblast';
    if (((pClasse = 'Mage') or (pClasse = 'Hybride')) and (temp = '11')) then nouvSort := 'Feu Sacré';
    if ((pClasse = 'Mage Noir') and (temp = '1')) then nouvSort := 'Boule de Sang';
    if ((pClasse = 'Mage Noir') and (temp = '2')) then nouvSort := 'Anti-Soin';
    if ((pClasse = 'Mage Noir') and (temp = '3')) then nouvSort := 'Ténèbres';
    if ((pClasse = 'Mage Noir') and (temp = '4')) then nouvSort := 'Corruption';
    if ((pClasse = 'Mage Noir') and (temp = '5')) then nouvSort := 'Chute Noire';
    if ((pClasse = 'Mage Noir') and (temp = '6')) then nouvSort := 'Onde Noire';
    if ((pClasse = 'Mage Noir') and (temp = '7')) then nouvSort := 'Typhon Noir';
    if ((pClasse = 'Mage Noir') and (temp = '8')) then nouvSort := 'Boule d´Ombre';
    if ((pClasse = 'Mage Noir') and (temp = '9')) then nouvSort := 'Sacrifice';
    if ((pClasse = 'Mage Noir') and (temp = '10')) then nouvSort := 'Malédiction';
    if ((pClasse = 'Mage Noir') and (temp = '11')) then nouvSort := 'Feu d´Enfer';

    sort1 := lireStringRam(5);
    sort2 := lireStringRam(6);
    sort3 := lireStringRam(7);
    sort4 := lireStringRam(8);

    if sort1 = '' then sort1 := nouvSort else
    if sort2 = '' then sort2 := nouvSort else
    if sort3 = '' then sort3 := nouvSort else
    if sort4 = '' then sort4 := nouvSort else
      begin
        repeat
        effacerEcran;
        lignes(7);
        writeln('                      -------------------------------------');
        lignes(1);
        writeln('         Avant d´apprendre un nouveau sort, vous devez en oublier un.');
        writeln('                          (q pour quitter)');
        lignes(1);
        writeln('                            1: ', sort1);
        writeln('                            2: ', sort2);
        writeln('                            3: ', sort3);
        writeln('                            4: ', sort4);
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(6);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = '1') or (choix = '2') or (choix = '3') or (choix = '4') or (choix = 'q') or (choix = 'Q'));

        if ((choix = 'q') or (choix = 'Q')) then exit;

        temp := choix;
        repeat
        ecrireIntegerRam(56, nbOr);
        effacerEcran;
        lignes(8);
        writeln('                      -------------------------------------');
        lignes(1);
        writeln('                      Êtes-vous sûr de vouloir remplacer');
        lignes(1);
        if choix = '1' then writeln('                            ',sort1,' par ',nouvSort,'? (o/n)');
        if choix = '2' then writeln('                            ',sort2,' par ',nouvSort,'? (o/n)');
        if choix = '3' then writeln('                            ',sort3,' par ',nouvSort,'? (o/n)');
        if choix = '4' then writeln('                            ',sort4,' par ',nouvSort,'? (o/n)');
        lignes(1);
        writeln('                      -------------------------------------');
        lignes(9);
        write(' Ma réponse: > ');readln(choix);
        until ((choix = 'o') or (choix = 'O') or (choix = 'n') or (choix = 'N'));

        if ((choix = 'n') or (choix = 'N')) then exit;

        if temp = '1' then sort1 := nouvSort;
        if temp = '2' then sort2 := nouvSort;
        if temp = '3' then sort3 := nouvSort;
        if temp = '4' then sort4 := nouvSort;

        if temp = '1' then ecrireStringRam(5, sort1);
        if temp = '2' then ecrireStringRam(6, sort2);
        if temp = '3' then ecrireStringRam(7, sort3);
        if temp = '4' then ecrireStringRam(8, sort4);

        if nouvSort = 'Boule de Feu' then nbOr := nbOr - 1000;
        if nouvSort = 'Soignage' then nbOr := nbOr - 1000;
        if nouvSort = 'Tornade' then nbOr := nbOr - 3000;
        if nouvSort = 'Onde de Choc' then nbOr := nbOr - 10000;
        if nouvSort = 'Jet de Feu' then nbOr := nbOr - 25000;
        if nouvSort = 'Blizzard' then nbOr := nbOr - 40000;
        if nouvSort = 'Séisme' then nbOr := nbOr - 75000;
        if nouvSort = 'Hydroblast' then nbOr := nbOr - 120000;
        if nouvSort = 'Glaciation' then nbOr := nbOr - 250000;
        if nouvSort = 'Aéroblast' then nbOr := nbOr - 750000;
        if nouvSort = 'Feu Sacré' then nbOr := nbOr - 5000000;
        if nouvSort = 'Boule de Sang' then nbOr := nbOr - 1000;
        if nouvSort = 'Anti-Soin' then nbOr := nbOr - 1000;
        if nouvSort = 'Ténèbres' then nbOr := nbOr - 3000;
        if nouvSort = 'Corruption' then nbOr := nbOr - 10000;
        if nouvSort = 'Chute Noire' then nbOr := nbOr - 25000;
        if nouvSort = 'Onde Noire' then nbOr := nbOr - 40000;
        if nouvSort = 'Typhon Noir' then nbOr := nbOr - 75000;
        if ((nouvSort = 'Boule d´Ombre') or (nouvSort = 'Boule d''Ombre')) then nbOr := nbOr - 120000;
        if nouvSort = 'Sacrifice' then nbOr := nbOr - 250000;
        if nouvSort = 'Malédiction' then nbOr := nbOr - 750000;
        if ((nouvSort = 'Feu d´Enfer') or (nouvSort = 'Feu d''Enfer')) then nbOr := nbOr - 5000000;

        ecrireIntegerRam(56, nbOr);
      end;

    ecrireIntegerRam(56, nbOr);
    effacerEcran;
    lignes(8);
    writeln('                      -------------------------------------');
    lignes(1);
    writeln('                          Vous avez appris le nouveau sort.');
    lignes(1);
    writeln('                            Il vous reste ',nbOr,' or.');
    lignes(1);
    writeln('                      -------------------------------------');
    lignes(9);
    write(' Ma réponse: > ');readln;
  end;
end.
