unit verificationCoordonneesMap;

interface
  uses
    Sysutils,
    ram,
    peche,
    minage,
    coupe,
    pnj;


//Header
  procedure verifTile;


implementation
// Procédre pour demarrer pecher, couper, miner et parler ---------------------
procedure verifTile;
  begin
   nbMap := lireIntegerRam(14);
   joueurX := lireIntegerRam(15);
   joueurY := lireIntegerRam(16);

   if nbMap = 0 then
     begin
       if joueurX = 1 then
         begin
           if (joueurY >= 10) and (joueurY <= 13) then minier;
           if (joueurY >= 14) and (joueurY <= 23) then couper;
           if (joueurY >= 27) and (joueurY <= 28) then couper;
           if (joueurY >= 38) and (joueurY <= 45) then couper;
         end;
       if joueurX = 2 then
         begin
           if (joueurY >= 8) and (joueurY <= 9) then minier;
           if (joueurY >= 46) then couper;
           if joueurY = 38 then gilles;
         end;
       if joueurX = 3 then
         begin
           if (joueurY >= 5) and (joueurY <= 7) then minier;
           if ((joueurY = 37) or (joueurY = 39)) then gilles;
           if (joueurY >= 49) then couper;
         end;
       if joueurX = 4 then
         begin
           if (joueurY >= 3) and (joueurY <= 4) then minier;
           if (joueurY >= 53) then couper;
           if joueurY = 38 then gilles;
         end;
       if joueurX = 5 then
         begin
           if (joueurY = 4) then minier;
           if (joueurY >= 53) then couper;
         end;
       if joueurX = 6 then
         begin
           if (joueurY >= 2) and (joueurY <= 3) then minier;
           if (joueurY >= 54) then couper;
         end;
       if joueurX = 7 then
         begin
           if (joueurY >= 0) and (joueurY <= 1) then minier;
           if (joueurY >= 52) then couper;
         end;
       if ((joueurX = 9) and (joueurY = 17)) then richard;
       if ((joueurX = 10) and ((joueurY = 16) or (joueurY = 18))) then richard;
       if (joueurX = 11) then
        begin
          if (joueurY = 17) then richard;
          if (joueurY = 37) then bernard;
        end;
       if ((joueurX = 12) and ((joueurY = 36) or (joueurY = 38))) then bernard;
       if ((joueurX = 13) and (joueurY = 37)) then bernard;
     end;

   if nbMap = 2 then
    begin
      if ((joueurX = 6) and (joueurY = 22)) then artisan;
      if ((joueurX = 6) and (joueurY = 16)) then forgeron;
      if ((joueurX = 6) and (joueurY = 19)) then mageSupreme;
      if ((joueurX = 7) and (joueurY = 21)) then artisan;
      if ((joueurX = 7) and (joueurY = 23)) then artisan;
      if ((joueurX = 7) and (joueurY = 15)) then forgeron;
      if ((joueurX = 7) and (joueurY = 17)) then forgeron;
      if ((joueurX = 7) and (joueurY = 18)) then mageSupreme;
      if ((joueurX = 7) and (joueurY = 20)) then mageSupreme;
      if ((joueurX = 8) and (joueurY = 19)) then mageSupreme;
      if ((joueurX = 8) and (joueurY = 22)) then artisan;
      if ((joueurX = 8) and (joueurY = 16)) then forgeron;
      if ((joueurX = 14) and (joueurY = 39)) then vampireSupreme;
      if ((joueurX = 15) and (joueurY = 40)) then vampireSupreme;
      if ((joueurX = 9) and (joueurY = 24)) then vendeur;
      if ((joueurX = 14) and (joueurY = 30)) then vendeur;
      if ((joueurX = 14) and (joueurY = 35)) then vendeur;
      if ((joueurX = 18) and (joueurY = 36)) then bob;
      if joueurX = 17 then
        begin
          if joueurY = 35 then bob;
          if joueurY = 37 then bob;
        end;
      if joueurX = 16 then
        begin
          if joueurY = 21 then hassan;
          if joueurY = 36 then bob;
        end;
      if joueurX = 15 then
        begin
          if ((joueurY = 20) or (joueurY = 22)) then hassan;
        end;
      if joueurX = 14 then
        begin
          if joueurY = 21 then hassan;
        end;
    end;

   if nbMap = 3 then
    begin
      if joueurX = 12 then
        begin
          if ((joueurY = 30) or (joueurY = 32)) then aventurierM2;
        end;
      if joueurX = 11 then
        begin
          if (joueurY = 31) then aventurierM2;
        end;
      if joueurX = 13 then
        begin
          if (joueurY = 31) then aventurierM2;
        end;
    end;

   if nbMap = 4 then
    begin
      if (joueurX = 4) then
        begin
          if (((joueurY = 24) or (joueurY = 26)) and (jimmyMort = 0)) then jimmy;
        end;
      if joueurX = 3 then
        begin
          if ((joueurY = 25) and (jimmyMort = 0)) then jimmy;
        end;
      if joueurX = 5 then
        begin
          if ((joueurY = 25) and (jimmyMort = 0)) then jimmy;
        end;
    end;
  end;
end.
