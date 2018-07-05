unit credit;


interface
  uses
    SysUtils,
    GestionEcran,
    mmSystem;


//Header
  procedure cred;


implementation
//Procédure d'affichage de la liste des crédits -------------------------------
procedure cred;
  begin
    effacerEcran;
    couleurtexte(14);
    couleurfond(0);
    writeln;
    writeln;
    writeln('   #               ######################################               # ');
    writeln('       #           ##             CREDITS              ##           #     ');
    writeln('   #       #       ######################################       #       # ');
    writeln('       #       #   ##                                  ##   #       #     ');
    writeln('  #       #        ## Progammateurs:  HEIJNEN Wout     ##       #       # ');
    writeln('       #       #   ##                 GOUVERNET Alan   ##   #       #     ');
    writeln('   #       #       ##                                  ##       #       # ');
    writeln('       #       #   ## Histoire:       HEIJNEN Wout     ##   #       #     ');
    writeln('   #       #       ##                 GOUVERNET Alan   ##       #       # ');
    writeln('       #       #   ##                                  ##   #       #     ');
    writeln('   #       #       ## Musique:        HEIJNEN Wout     ##       #       # ');
    writeln('       #       #   ##                                  ##   #       #     ');
    writeln('   #       #       ## Testeurs:       HEIJNEN Wout     ##       #       # ');
    writeln('       #       #   ##                 GOUVERNET Alan   ##   #       #     ');
    writeln('   #       #       ##                                  ##       #       # ');
    writeln('       #           ##                                  ##           #     ');
    writeln('   #               ######################################               # ');
    writeln('                                                                          ');
    writeln;
    writeln;
    couleurtexte(15);
    couleurfond(0);
    writeln('     Appuyez sur la touche "entrée" pour retourner au menu');
    writeln;
    write(' Ma réponse: > '); readln;
    playsound('menu.wav',0,SND_ASYNC);
  end;
end.
