unit choisirSonAspect;

interface
  uses
    SysUtils,
    questionImage,
    insererLignes,
    GestionEcran,
    ram;


  var
    sortie: Boolean;
{Permet de sortir du boucle tant que pour choisir un autre aspect si le joueur tappe 'n' comme réponse.}


//Header
  procedure choisirAspect;


implementation
procedure choisirAspect;
  begin
    repeat
    nom := lireStringRam(1);
    effacerEcran;
    lignes(7);
    writeln('                         ---------------------------------');
    writeln('                  Vous aimerez avoir quoi  comme aspect dans le jeu ?');
    writeln('                   Votre personnage est représenté par un caractère.');
    writeln('                         (1 caractère du table ASCII étendu)   ');
    writeln('                         ________________________________ ');
    question;
    write(' Ma réponse: > '); readln(joueurAsp);
    if (joueurAsp = '') or (joueurAsp = ' ') then joueurAsp := nom;
    repeat
    sortie := FALSE;
    effacerEcran;
    lignes(8);
    writeln('                         ---------------------------------');
    writeln('                          Donc votre personnage: ',joueurAsp);
    writeln('                            "o" pour Oui,  "n" pour Non');
    writeln('                         ________________________________');
    question;
    write(' Ma réponse: > '); readln(choix);
    if choix = 'o' then
      begin
      ecrireStringRam(3,joueurAsp);
      exit;
      end
    else if choix = 'n' then sortie := TRUE
    until sortie = TRUE;
    until FALSE ;
  end;
end.
