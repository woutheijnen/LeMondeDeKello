unit actualisationDecranMinage;

interface
  uses
    Sysutils,
    ram,
    GestionEcran,
    insererLignes;


//Header
  procedure actuMinier;


implementation
// Actualisation de l'écran de minage -----------------------------------------
procedure actuMinier;
  begin
    nivMinier := lireIntegerRam(2);
    xpMinier := lireIntegerRam(29);
    text1 := lireStringRam(16);
    text2 := lireStringRam(17);
    text3 := lireStringRam(18);
    text4 := lireStringRam(19);
    text5 := lireStringRam(26);
    text6 := lireStringRam(27);
    text7 := lireStringRam(28);
    text8 := lireStringRam(29);
    text9 := lireStringRam(30);
    text10 := lireStringRam(31);

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                   Vous êtes vers des roches que vous pouvez miner.');
    writeln('                           Appuyez sur "m" pour miner.');
    writeln('                             Ou sur "q" pour quitter.');
    writeln('                         ________________________________');
    lignes(2);
    writeln('  Niveau de minier: ',nivMinier);
    writeln('   Xp j´usqu´au prochain niveau: ',xpMinier);
    lignes(1);
    writeln(' ',text1);
    writeln(' ',text2);
    writeln(' ',text3);
    writeln(' ',text4);
    writeln(' ',text5);
    writeln(' ',text6);
    writeln(' ',text7);
    writeln(' ',text8);
    writeln(' ',text9);
    writeln(' ',text10);
    lignes(2);
    write(' Ma réponse: > '); readln(choix);
    write('Vous commencez à extraire les minéraux dans la roche..');
    ecrireStringRam(0, choix);
  end;
end.
