unit aide;

interface
  uses
    Sysutils,
    gestionEcran,
    insererLignes,
    ram;


//Header
  procedure aideMenu;


implementation
procedure aideMenu;
  begin
  repeat
    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        |         AIDE - Commandes        |');
    writeln('                         ---------------------------------');
    lignes(2);
    writeln('            Liste de commandes:');
    lignes(1);
    writeln('               z, Z, nord, NORD  : D�placement vers le nord.');
    writeln('               s, S, sud, SUD    : D�placement vers le sud.');
    writeln('               q, Q, ouest, OUEST: D�placement vers l�ouest.');
    writeln('               d, D, est, EST    : D�placement vers l�est.');
    lignes(1);
    writeln('               w, W              : Parler avec des PNJ, miner, etc.');
    writeln('               x, X              : Ouvrir le menu du jeu.');
    writeln('               g, G              : Parler avec Galack.');
    lignes(5);
    writeln('  - Page 1');
    writeln('Entrer "s" pour la page suivante');
    writeln;
    write(' Ma r�ponse: > '); readln(choix);
    until ((choix = 's') or (choix = 'S'));

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        |         AIDE - Map              |');
    writeln('                         ---------------------------------');
    lignes(2);
    writeln('            Liste d�objets:');
    lignes(1);
    couleurTexte(2);
    write('               Y'); couleurTexte(15); writeln('          : Arbre');
    couleurTexte(7);
    write('               8'); couleurTexte(15); writeln('          : Roche, peut �tre min�.');
    couleurTexte(11);
    write('               ~'); couleurTexte(15); writeln('          : Eau.');
    couleurTexte(14);
    write('               .'); couleurTexte(15); writeln('          : Sable, peut d�marrer un combat al�atoirement.');
    writeln('                            Mais est aussi utilis� pour sortir d�un endroit.');
    writeln('                  __');
    writeln('               [#[__]     : Lit pour se soigner.');
    lignes(1);
    writeln('               A, J, H, ..: Nom des PNJ, parlez avec "w".');
    lignes(5);
    writeln('  - Page 2');
    lignes(1);
    write(' Ma r�ponse: > '); readln;
  end;
end.
