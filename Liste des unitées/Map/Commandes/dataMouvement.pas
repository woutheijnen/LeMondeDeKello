unit dataMouvement;

interface
  uses
    Sysutils,
    ram,
    map,
    genererNombreAleatoire,
    combat,
    msgErreur,
    objetsMap;


//Header
  procedure mouvNord;
  procedure mouvSud;
  procedure mouvOuest;
  procedure mouvEst;


implementation
procedure mouvNord;
  begin
    joueurX := lireIntegerRam(15);
    joueurY := lireIntegerRam(16);
    travMur := lireIntegerRam(71);
    galack := lireIntegerRam(75);
    nbMap := lireIntegerRam(14);
    sortieForet := lireIntegerRam(77);
    nivCombat := lireIntegerRam(1);
    if ((joueurX - 1) >= 0) then
      begin
        mapAspect;
        blocade := lireIntegerRam(70);
        if ((blocade = 0) or (travMur = 1)) then
          begin
            if galack = 1 then
              begin
                ecrireIntegerRam(73, joueurX);
                ecrireIntegerRam(74, joueurY);
                ecrireIntegerRam(76, nbMap);
              end;
            joueurX := (joueurX - 1);
          end;

    if nbMap = 0 then
      begin
        if joueurX = 0 then
          begin
            if (joueurY >= 29) and (joueurY <= 37) then
              begin
                joueurX := 19;
                joueurY := 3;
                nbMap := 3;
                aleatoire(0,4);
                sortieForet := lireIntegerRam(0);
                ecrireIntegerRam(77, sortieForet);
                mapMusique;
              end;
          end;

        if joueurX = 8 then
          begin
            if (joueurY = 6) then
              begin
                joueurX := 18;
                joueurY := 9;
                nbMap := 2;
              end;
          end;
      end;

      if ((nbMap = 2) and (joueurX = 8) and (joueurY = 8))  then
        begin
          lit;
        end;

      if nbMap = 3 then
        begin
          if ((joueurX = 0) and ((joueurY >= 15) and (joueurY <= 18))) then
            begin
              if sortieForet = 3 then
                begin
                  if ((joueurY >= 15) and (joueurY <= 18)) then
                    begin
                      joueurX := 19;
                      joueurY := 25;
                      nbMap := 4;
                    end;
                end else
                  begin
                    joueurX := 19;
                    joueurY := 3;
                  end;
            end;
          if ((joueurX = 0) and ((joueurY >= 32) and (joueurY <= 35))) then
            begin
              if sortieForet = 4 then
                begin
                  joueurX := 19;
                  joueurY := 25;
                  nbMap := 4;
                end else
                  begin
                    joueurX := 19;
                    joueurY := 3;
                  end;
            end;
          end;
      end;

      if ((nbMap = 4) and (joueurX = 0) and (((joueurY >= 4) and (joueurY <= 7)) or ((joueurY >= 56) and (joueurY <= 59)))) then
            begin
              joueurX := 1;
              wrapErreur;
            end;

          ecrireIntegerRam(15, joueurX);
          ecrireIntegerRam(16, joueurY);
          ecrireIntegerRam(14, nbMap);

    aleatoire(0,19);
      if ((lireIntegerRam(0) = 0) and ((nbMap = 3) or (nbMap = 4))) then
        begin
          ecrireStringRam(13, 'Vampire');
          ecrireStringRam(9, 'Vampire');
          ecrireStringRam(14, '');
          aleatoire(15, 30);
          ecrireIntegerRam(48, lireIntegerRam(0));
          ecrireIntegerRam(65, 60);
          demarCombat;
        end;
  end;


procedure mouvSud;
  begin
    joueurX := lireIntegerRam(15);
    joueurY := lireIntegerRam(16);
    travMur := lireIntegerRam(71);
    galack := lireIntegerRam(75);
    nbMap := lireIntegerRam(14);
    sortieForet := lireIntegerRam(77);
    if ((joueurX + 1) <= 20) then
      begin
        mapAspect;
        blocade := lireIntegerRam(70);
        if ((blocade = 0) or (travMur = 1)) then
          begin
            if galack = 1 then
              begin
                ecrireIntegerRam(73, joueurX);
                ecrireIntegerRam(74, joueurY);
                ecrireIntegerRam(76, nbMap);
              end;
            joueurX := (joueurX + 1);
          end;

      if nbMap = 2 then
        begin
          if joueurX = 19 then
            begin
              if ((joueurY >= 8) and (joueurY <= 11)) then
                begin
                  joueurX := 9;
                  joueurY := 6;
                  nbMap := 0;
                end;
            end;
          if ((joueurX = 8) and (joueurY = 8))  then
            begin
              lit;
            end;
        end;

      if nbMap = 3 then
        begin
          if ((joueurX = 20) and ((joueurY >= 2) and (joueurY <= 5))) then
            begin
              joueurX := 1;
              joueurY := 31;
              nbMap := 0;
              mapMusique;
            end;
        if ((joueurX = 20) and ((joueurY >= 20) and (joueurY <= 23))) then
          begin
            if sortieForet = 1 then
              begin
                joueurX := 19;
                joueurY := 25;
                nbMap := 4;
              end else
                begin
                  joueurX := 19;
                  joueurY := 3;
                end;
          end;
        if ((joueurX = 20) and ((joueurY >= 55) and (joueurY <= 58))) then
          begin
            if sortieForet = 2 then
              begin
                joueurX := 19;
                joueurY := 25;
                nbMap := 4;
              end else
                begin
                  joueurX := 19;
                  joueurY := 3;
                end;
          end;
        end;
      end;

      if ((nbMap = 4) and (joueurX = 20) and (((joueurY >= 4) and (joueurY <= 7)) or ((joueurY >= 49) and (joueurY <= 52)))) then
        begin
          joueurX := 19;
          wrapErreur;
        end;
      if ((nbMap = 4) and (joueurX = 20) and ((joueurY >= 24) and (joueurY <= 27))) then
        begin
          joueurX := 0;
          joueurY := 33;
          nbMap := 3;
        end;

        ecrireIntegerRam(15, joueurX);
        ecrireIntegerRam(16, joueurY);
        ecrireIntegerRam(14, nbMap);

    aleatoire(0,19);
      if ((lireIntegerRam(0) = 0) and ((nbMap = 3) or (nbMap = 4))) then
        begin
          ecrireStringRam(13, 'Vampire');
          ecrireStringRam(9, 'Vampire');
          ecrireStringRam(14, '');
          aleatoire(15, 30);
          ecrireIntegerRam(48, lireIntegerRam(0));
          ecrireIntegerRam(65, 60);
          demarCombat;
        end;
  end;


procedure mouvOuest;
  begin
    joueurX := lireIntegerRam(15);
    joueurY := lireIntegerRam(16);
    travMur := lireIntegerRam(71);
    galack := lireIntegerRam(75);
    nbMap := lireIntegerRam(14);
    sortieForet := lireIntegerRam(77);
    if ((joueurY - 1) >= 0) then
      begin
        mapAspect;
        blocade := lireIntegerRam(70);
        if ((blocade = 0) or (travMur = 1)) then
          begin
            if galack = 1 then
              begin
                ecrireIntegerRam(73, joueurX);
                ecrireIntegerRam(74, joueurY);
                ecrireIntegerRam(76, nbMap);
              end;
            joueurY := (joueurY - 1);
          end;

    if nbMap = 3 then
      begin

        if (((joueurX = 7) or (joueurX = 8)) and (joueurY = 0)) then
          begin
            if sortieForet = 0 then
              begin
                joueurX := 19;
                joueurY := 25;
                nbMap := 4;
              end else
                begin
                  joueurX := 19;
                  joueurY := 3;
                end;
          end;
      end;
      end;

      if ((nbMap = 4) and (joueurY = 0) and ((joueurX = 5) or (joueurX = 6))) then
        begin
          joueurY := 1;
          wrapErreur;
        end;

        ecrireIntegerRam(15, joueurX);
        ecrireIntegerRam(16, joueurY);
        ecrireIntegerRam(14, nbMap);

    aleatoire(0,19);
      if ((lireIntegerRam(0) = 0) and ((nbMap = 3) or (nbMap = 4))) then
        begin
          ecrireStringRam(13, 'Vampire');
          ecrireStringRam(9, 'Vampire');
          ecrireStringRam(14, '');
          aleatoire(15, 30);
          ecrireIntegerRam(48, lireIntegerRam(0));
          ecrireIntegerRam(65, 60);
          demarCombat;
        end;
  end;


procedure mouvEst;
  begin
    joueurX := lireIntegerRam(15);
    joueurY := lireIntegerRam(16);
    travMur := lireIntegerRam(71);
    galack := lireIntegerRam(75);
    nbMap := lireIntegerRam(14);
    if ((joueurY + 1) <= 60) then
      begin
        mapAspect;
        blocade := lireIntegerRam(70);
        if ((blocade = 0) or (travMur = 1)) then
          begin
            if galack = 1 then
              begin
                ecrireIntegerRam(73, joueurX);
                ecrireIntegerRam(74, joueurY);
                ecrireIntegerRam(76, nbMap);
              end;
            joueurY := (joueurY + 1);
          end;
        ecrireIntegerRam(16, joueurY);
      end;

    aleatoire(0,19);
      if ((lireIntegerRam(0) = 0) and ((nbMap = 3) or (nbMap = 4))) then
        begin
          ecrireStringRam(13, 'Vampire');
          ecrireStringRam(9, 'Vampire');
          ecrireStringRam(14, '');
          aleatoire(15, 30);
          ecrireIntegerRam(48, lireIntegerRam(0));
          ecrireIntegerRam(65, 60);
          demarCombat;
        end;
  end;
end.
