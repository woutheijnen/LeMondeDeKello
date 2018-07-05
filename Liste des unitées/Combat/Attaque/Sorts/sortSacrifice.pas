unit sortSacrifice;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram;

  var
    precision: Integer;
{Nombre aléatoire qui rend un attaque un echec critique, un coupe critique, un attaque normale,
un rattage mais peuvent aussi donner des statuts différents selon les sorts.}


//Header
  procedure sacrificeAdv;
  procedure sacrificePers;


implementation
procedure sacrificeAdv;
  begin
    aleatoire(0,100);
    precision := lireIntegerRam(0);
    pvPersActuel := lireIntegerRam(9);
    pvAdvActuel := lireIntegerRam(41);
    nivCombat := lireIntegerRam(1);
    nivAdv := lireIntegerRam(48);
    text4 := '';
      if (precision = 0) then
        begin
          text3 := 'Votre adversaire effectu mal son sort "Sacrifice" et meurt!';
          degatPers := 0;
          degatAdv := pvAdvActuel;
        end;
    aleatoire(0, (nivAdv-nivCombat+30));
      if (precision <= lireIntegerRam(0)) and (nivAdv >= nivCombat) then
        begin
          text3 := 'Votre adversaire vous sacrifie à l´enfer et vous meurez.';
          degatPers := pvPersActuel;
          degatAdv := 0;
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text3 := 'Votre adversaire rate son attaque.';
          end;
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    ecrireIntegerRam(59, degatPers2);
    ecrireIntegerRam(60, degatAdv2);
  end;


procedure sacrificePers;
  begin
    aleatoire(0,100);
    precision := lireIntegerRam(0);
    pvPersActuel := lireIntegerRam(9);
    pvAdvActuel := lireIntegerRam(41);
    nivCombat := lireIntegerRam(1);
    nivAdv := lireIntegerRam(48);
    text2 := '';
      if (precision = 0) then
        begin
          text1 := 'Vous effectuez mal votre sort et vous meurez vous même!';
          degatPers := pvPersActuel;
          degatAdv := 0;
        end;
    aleatoire(0, (nivCombat-nivAdv+30));
      if (precision <= lireIntegerRam(0)) and (nivCombat >= nivAdv) then
        begin
          text1 := 'Vous faite un sacrifice de votre adversaire et il meurt.';
          degatPers := 0;
          degatAdv := pvAdvActuel;
        end else if (nivCombat < nivAdv) then
        begin
          text1 := 'Votre adversaire résiste à votre sort. Vous ne pouvez pas utiliser';
          text2 := 'ce sort si votre niveau est inférieur à celle de votre adversaire.';
          degatPers := 0;
          degatAdv := 0;
        end else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            text1 := 'Vous ratez votre attaque.';
          end;
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireIntegerRam(57, degatPers);
    ecrireIntegerRam(58, degatAdv);
  end;
end.
