unit sortSoignage;

interface
  uses
    Sysutils,
    genererNombreAleatoire,
    ram,
    formulePv;

  var
    precision: Integer;
{Nombre aléatoire qui rend un attaque un echec critique, un coupe critique, un attaque normale,
un rattage mais peuvent aussi donner des statuts différents selon les sorts.}
    pvPersMax: Integer;
{Contiens la capacité maximale des pv du joueur.}


//Header
  procedure soignageAdv;
  procedure soignagePers;


implementation
procedure soignageAdv;
  begin
    aleatoire(0,100);
    precision := lireIntegerRam(0);
    pvAdvMax := lireIntegerRam(42);
    statutAdv := lireStringRam(14);
    text4 := '';

    if statutAdv = 'Anti-Soin' then
      begin
        degatAdv2 := 0;
        degatPers2 := 0;
        soinPers := 0;
        text3 := 'Votre adversaire n´arrive pas à se soigner à cause de anti-soin.'
      end;

    if statutAdv <> 'Anti-Soin' then
      begin
      if (precision = 0) then
        begin
          text3 := 'Votre adversaire effectu mal son sort "Soignage" et prend des dégats!';
          degatPers := 0;
          degatAdv := (pvAdvMax div 2);
          soinAdv := 0;
        end;
      if (precision = 1) then
        begin
          text3 := 'Votre adversaire se soigne complètement avec sa magie.';
          degatPers := 0;
          degatAdv := 0;
          soinAdv := pvAdvMax;
        end;
      if (precision > 1) and (precision <= 90) then
        begin
          text3 := 'Votre adversaire se soigne pour la moitié avec sa magie.';
          degatPers := 0;
          degatAdv := 0;
          soinAdv := (pvAdvMax div 2);
        end
         else
          begin
            degatAdv2 := 0;
            degatPers2 := 0;
            soinAdv := 0;
            text3 := 'Votre adversaire rate sa soignage.';
          end;
      end;

    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    ecrireIntegerRam(59, degatPers2);
    ecrireIntegerRam(60, degatAdv2);
    ecrireIntegerRam(51, soinAdv);
  end;


procedure soignagePers;
  begin
    aleatoire(0,100);
    precision := lireIntegerRam(0);
    pvPersMax := calculPvPersMax;
    statutPers := lireStringRam(15);
    text2 := '';

    if statutPers = 'Anti-Soin' then
      begin
        degatAdv2 := 0;
        degatPers2 := 0;
        soinPers := 0;
        text1 := 'Vous n´arrivez pas à vous soigner, à cause de anti-soin.'
      end;

    if statutPers <> 'Anti-Soin' then
    begin
      if (precision = 0) then
        begin
          text1 := 'Vous effectuez mal votre sort et vous prenez des dégats!';
          degatPers := (pvPersMax div 2);
          degatAdv := 0;
          soinPers := 0;
        end;
      if (precision = 1) then
        begin
          text1 := 'Vous vous soignez complètement avec votre magie.';
          degatPers := 0;
          degatAdv := 0;
          soinPers := pvPersMax;
        end;
              if (precision = 1) then
        begin
          text1 := 'Vous vous soignez pour la moitié avec votre magie.';
          degatPers := 0;
          degatAdv := 0;
          soinPers := (pvPersMax div 2);
        end
          else
            begin
              degatAdv2 := 0;
              degatPers2 := 0;
              soinPers := 0;
              text1 := 'Vous ratez votre soignage.';
            end;
    end;

    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireIntegerRam(57, degatPers);
    ecrireIntegerRam(58, degatAdv);
    ecrireIntegerRam(52, soinPers);
  end;
end.
