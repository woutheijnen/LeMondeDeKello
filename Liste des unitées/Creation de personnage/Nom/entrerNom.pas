unit entrerNom;

interface
  uses
    SysUtils,
    questionImage,
    verificationNom,
    choisirSonAspect,
    GestionEcran,
    insererLignes,
    ram;


  var
    sortie: Boolean;
    sortie2: Boolean;
{Permet de quitter les boucles tant que, selon si le joueur tape o, n ou une autre touche.)}


//Header
  procedure demandeNom;


implementation
//Procédure entrer votre nom -------------------------------------------------
procedure demandeNom;
  begin
    repeat
    sortie := FALSE;
    effacerEcran;
    lignes(7);
    writeln('                         ---------------------------------');
    writeln('                              Quelle est votre nom?');
    writeln('                       Pour un nom au hasard, n´entrez rien.');
    writeln('                               (10 caractères max)   ');
    writeln('                         ________________________________ ');
    question;
    write(' Ma réponse: > '); readln(nom);
    verifNom(nom);
    nom := lireStringRam(1);
    repeat
    sortie2 := FALSE;
    effacerEcran;
    lignes(8);
    writeln('                         ---------------------------------');
    writeln('                            Votre nom est ', nom,'?');
    writeln('                          "o" pour Oui,  "n" pour Non');
    writeln('                         ________________________________');
    question;
    write(' Ma réponse: > '); readln(choix);
    if (choix = 'o') or (choix = 'O') then
    begin
    sortie := TRUE;
    sortie2 := TRUE
    end;
    if (choix = 'n') or (choix = 'N') then sortie2 := TRUE
    until sortie2 = TRUE;
    until sortie = TRUE ;
    ecrireStringRam(1,nom);
    choisirAspect;
  end;
end.
