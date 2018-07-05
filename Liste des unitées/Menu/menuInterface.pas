unit menuInterface;

interface
  uses
    Sysutils,
    ram,
    insererLignes,
    GestionEcran,
    mmSystem;


//Header
  procedure actuInterfaceMenu;
implementation
//Procédure executé quand on choisit quelquechose dans le menu ----------------
procedure actuInterfaceMenu;
  begin
    effacerEcran;
    couleurtexte(0);
    couleurfond(15);
    writeln('       __  __ ______ _   _ _    _                                              ');
    writeln('      |  \/  |  ____| \ | | |  | |                                             ');
    writeln('      | \  / | |__  |  \| | |  | |                                             ');
    writeln('      | |\/| |  __| | . ` | |  | |                                             ');
    writeln('      | |  | | |____| |\  | |__| |                                             ');
    writeln('      |_|  |_|______|_| \_|\____/                                              ');
    writeln('                                                                               ');
    couleurtexte(15);
    couleurfond(7);
    lignes(1);
    couleurfond(8);
    lignes(1);
    couleurfond(0);
    lignes(2);
    writeln('             1) Nouveau jeu');
    lignes(1);
    writeln('             2) Charger votre partie');
    writeln('                (Si vous en avez-un sur cette ordinateur..)');
    lignes(1);
    writeln('             3) Histoire');
    lignes(1);
    writeln('             4) Crédits');
    lignes(1);
    writeln('             5) Fermer');
    lignes(2);
    writeln('                                - Copyright 2013 HEIJNEN Wout et GOUVERNET Alan');
    write(' Ma réponse: > ');readln(choix);
    ecrireStringRam(0, choix);
    if (choix = '1') or (choix = '2') or (choix = '3') or (choix = '4') then
      begin
        playsound('valid.wav', 0, SND_ASYNC)
      end;
  end;
end.
