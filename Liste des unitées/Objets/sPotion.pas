unit sPotion;

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
{Variable temporaire pour calculer la diff�rence d�avant l�utlisation et apr�s.}


//Header
  procedure utiliserSPotion;


implementation
procedure utiliserSPotion;
  begin
    pvPersActuel := lireIntegerRam(9);
    tmp := pvPersActuel;
    pvPersMax := calculPvPersMax;
    pvPersActuel := pvPersActuel + ((pvPersMax*100) div 200);
    if pvPersActuel > pvPersMax then pvPersActuel := pvPersMax;
    ecrireIntegerRam(9, pvPersActuel);
    tmp := pvPersActuel - tmp;

    effacerEcran;
    lignes(8);
    writeln('                        ---------- Super Potion: --------------');
    lignes(1);
    writeln('                         Le potion vous soigne ',tmp,' pv.');
    lignes(1);
    writeln('                        -------------------------------------');
    lignes(11);
    write(' Ma r�ponse: > ');readln;
  end;
end.

