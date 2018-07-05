unit menu;

interface
  uses
    Sysutils,
    ram,
    mmSystem,
    menuInterface,
    confirmation,
    histoire,
    GestionEcran,
    credit;


//Header
  procedure demarMenu;


implementation
procedure demarMenu;
//Démarrage du menu
  begin
    playsound('menu.wav',0,SND_ASYNC);
    attendre(250);
    repeat
      ecrireIntegerRam(25, 0);
      actuInterfaceMenu;
      choix := lireStringRam(0);
      if (choix = '1') then confirmationMenu;
      if (choix = '2') then confirmationMenu;
      if (choix = '3') then hist;
      if (choix = '4') then cred;
      if (choix = '5') then
        begin
          confirmationMenu;
          if (lireStringRam(32) = '1') then exit;
        end;

    until FALSE;
  end;
end.

