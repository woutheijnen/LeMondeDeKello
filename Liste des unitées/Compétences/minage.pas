unit minage;

interface
  uses
    Sysutils,
    ram,
    minageText,
    monterNiv,
    actualisationDecranMinage;


//Header
  procedure minier;


implementation
// Procedure de minage --------------------------------------------------------
procedure minier;
  begin
//Effacer le contenu de text 1-10 dans le ram
    ecrireStringRam(16, '');
    ecrireStringRam(17, '');
    ecrireStringRam(18, '');
    ecrireStringRam(19, '');
    ecrireStringRam(26, '');
    ecrireStringRam(27, '');
    ecrireStringRam(28, '');
    ecrireStringRam(29, '');
    ecrireStringRam(30, '');
    ecrireStringRam(31, '');

    repeat
    actuMinier;
    choix := lireStringRam(0);
    if ((choix = 'q') or (choix = 'Q')) then exit
      else if ((choix = 'm') or (choix = 'M')) then
        begin
          text1 := text2;
          text2 := text3;
          text3 := text4;
          text4 := text5;
          text5 := text6;
          text6 := text7;
          text7 := text8;
          text8 := text9;
          text9 := demarMinage;
          text10 := lireStringRam(31);
            if xpMinier <= 0 then
              begin
                monterNivMinier;
              end;
        end;
      until FALSE;
  end;
end.
