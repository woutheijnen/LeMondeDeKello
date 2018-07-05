unit credit;


interface
  uses
    SysUtils,
    GestionEcran,
    mmSystem;


//Header
  procedure cred;


implementation
//Proc�dure d'affichage de la liste des cr�dits -------------------------------
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
    writeln('     Appuyez sur la touche "entr�e" pour retourner au menu');
    writeln;
    write(' Ma r�ponse: > '); readln;
    playsound('menu.wav',0,SND_ASYNC);
  end;
end.
