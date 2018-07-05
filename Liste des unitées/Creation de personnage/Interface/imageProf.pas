unit imageProf;


interface
  uses
    SysUtils,
    GestionEcran,
    insererLignes,
    ram;


//Header
  procedure prof;


implementation
//Procédure discussion instructeur --------------------------------------------
procedure prof;
  begin
    text1 := lireStringRam(16);
    text2 := lireStringRam(17);
    text3 := lireStringRam(18);
    text4 := lireStringRam(19);
    effacerEcran;
    lignes(7);
    writeln('                            ___________________________________________________');
    writeln('                           / ',text1);
    writeln('                           | ',text2);
    writeln('         .-"""""""-.       | ',text3);
    writeln('        /  _____/\_ \      | ',text4);
    writeln('       / /`__   __ \ \     \___  _____________________________________________/');
    writeln('       |/  (a) (a)  \|       _/ /');
    writeln('      (_    (___)    _)     /__/');
    writeln('        \  \_____/  /');
    writeln('         `-._   _.-´');
    writeln('         __.-)_(-,__');
    writeln('      ./´/   |_|   \`\.');
    writeln('     /   `""""""""""`  \');
    lignes(2);
    writeln('Appuyez sur la touche "entrée" pour continuer.');
    lignes(1);
    write(' Ma réponse: > '); readln(choix);
    ecrireStringRam(0,choix);
  end;
end.
