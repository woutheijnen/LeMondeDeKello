unit mPotion;

interface
  uses
    Sysutils,
    ram,
    formulePv,
    insererLignes,
    GestionEcran;


  var
    pvPersMax: Integer;
{Contiens le maximum de pv que le joueur peut avoir.}
    tmp: Integer;
{Variable temporaire pour calculer la différence d´avant l´utlisation et après.}
    tmp2: String;
{Variable temporaire qui contiens le statut du joueur.}

//Header
  procedure utiliserMPotion;


implementation
procedure utiliserMPotion;
  begin
    pvPersActuel := lireIntegerRam(9);
    tmp := pvPersActuel;
    pvPersMax := calculPvPersMax;
    pvPersActuel := pvPersMax;
    ecrireIntegerRam(9, pvPersActuel);
    tmp := pvPersActuel - tmp;
    tmp2 := lireStringRam(15);
    ecrireStringRam(15, '');

    effacerEcran;
    lignes(8);
    writeln('                        ---------- Mega Potion: --------------');
    lignes(1);
    if tmp2 = '' then writeln('                         Le potion vous soigne ',tmp,' pv.')
    else writeln('               Le potion vous soigne ',tmp,' pv et vous soigne de ',tmp2,'.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma réponse: > ');readln;
  end;
end.

