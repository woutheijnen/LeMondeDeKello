unit combatFuire;

interface
  uses
    Sysutils,
    ram,
    actualisationEcranCombat,
    formuleFuire,
    map,
    adversaireAttaque;


//Header
  procedure fuire;


implementation
procedure fuire;
begin
      fuireEssai := lireIntegerRam(68);
      degatAdv := 0;
      degatPers := 0;
      fuireEssai := fuireEssai + 1;
      ecrireIntegerRam(57, degatPers);
      ecrireIntegerRam(58, degatAdv);
      ecrireIntegerRam(68, fuireEssai);
      pClasse := lireStringRam(4);

      if (calculFuireChance > 255) then
      begin
        if ((pClasse = 'Mage') or (pClasse = 'Mage Noir')) then text2 := 'Vous téléportez votre adversaire pour esquivez le combat.'
        else text2 := 'Vous partez en courant lorsque votre adversaire ne regarde pas.';
        ecrireStringRam(17, text2);
        actuEcranCombat;
        fuireReussi := 1;
        ecrireIntegerRam(69, fuireReussi);
        mapMusique;
      end else
            begin
              if (pClasse = 'Mage') or (pClasse = 'Mage Noir') then text2 := 'Vous essayez de téléportez votre adversaire mais il est trop rapide!'
              else text2 := 'Vous essayez de partir en courant mais votre adversaire est trop rapide!';
              ecrireStringRam(17, text2);
              advAttaque;
            end;
    end;
end.
