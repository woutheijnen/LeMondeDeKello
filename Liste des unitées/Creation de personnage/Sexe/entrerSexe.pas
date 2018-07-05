unit entrerSexe;

interface
  uses
    Sysutils,
    imageProf,
    ram;


  var
    mauvSexe: Boolean;
{Pour quitter la boucle, ce valeur doit être FAUX, et il se met que à FAUX si le joueur entre une sexe
f ou m.}


//Header
  procedure demandeSexe;


implementation
procedure demandeSexe;
  begin
    text1 := 'quelques questions.';
    text2 := 'Vous êtes une fille ou bien un garçon?';
    text3 := '';
    text4 := '        ("f" pour fille ou "m" pour garçon';
    ecrireStringRam(16, text1);
    ecrireStringRam(17, text2);
    ecrireStringRam(18, text3);
    ecrireStringRam(19, text4);
    prof;

    repeat
    mauvSexe := TRUE;
    choix := lireStringRam(0);

    if (choix = 'f') then
      begin
        sexe := choix;
        ecrireStringRam(2,sexe);
        text1 := 'D´accord très bien! Vous êtes donc bien';
        text2 := 'une fille!';
        text3 := '';
        text4 := 'Une autre question maintenant..';
        ecrireStringRam(16, text1);
        ecrireStringRam(17, text2);
        ecrireStringRam(18, text3);
        ecrireStringRam(19, text4);
        prof;
        mauvSexe := FALSE
      end;

    if (choix = 'm') then
      begin
        sexe := choix;
        ecrireStringRam(2,sexe);
        text1 := 'D´accord très bien! Vous êtes donc bien';
        text2 := 'un garçon!';
        text3 := '';
        text4 := 'Une autre question maintenant..';
        ecrireStringRam(16, text1);
        ecrireStringRam(17, text2);
        ecrireStringRam(18, text3);
        ecrireStringRam(19, text4);
        mauvSexe := FALSE;
        prof;
      end;

    if (mauvSexe = TRUE) then
      begin
        text1 := 'Non, non, non! Ca ca n´existe pas pour moi!';
        text2 := 'Donc je vous redémande.';
        text3 := 'Vous êtes une fille ou bien un garçon?';
        text4 := '        ("f" pour fille ou "m" pour garçon';
        ecrireStringRam(16, text1);
        ecrireStringRam(17, text2);
        ecrireStringRam(18, text3);
        ecrireStringRam(19, text4);
        prof;
      end;

    ecrireStringRam(2, sexe);
    until (mauvSexe = FALSE) ;
  end;
end.
