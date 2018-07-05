unit confirmation;

interface
  uses
    Sysutils,
    insererLignes,
    questionImage,
    chargement,
    creationPersonnage,
    GestionEcran,
    mmSystem,
    ram;


//Header
  procedure confirmationMenu;


implementation
procedure confirmationMenu;
  begin
    temp := lireStringRam(0);
    ecrireStringRam(32, temp);
    choix := '';
    quitter := lireIntegerRam(25);
    if quitter = 1 then exit;

    repeat
    effacerEcran;
    lignes(7);
    write('                        '); couleurfond(4); writeln(' -------------------------------- ');
    couleurfond(0);
    write('                        '); couleurfond(4); writeln('|   Etes vous vraiement sûr?     |');
    couleurfond(0);
    write('                        '); couleurfond(4); writeln('|                                |');
    couleurfond(0);
    write('                        '); couleurfond(4); writeln('| "o" pour Oui,  "n" pour Non    |');
    couleurfond(0);
    write('                        '); couleurfond(4); writeln(' -------------------------------- ');
    couleurfond(0);
    couleurtexte(15);
    question;
    write(' Ma réponse: > ');readln(choix);

    if ((choix = 'o') or (choix = 'O')) then
      begin
        if (temp = '1') then nouveauJeu;
        if (temp = '2') then chargerMenu;
        if (temp = '5') then ecrireStringRam(32, '1');
        playsound('menu.wav',0,SND_ASYNC);
        exit;
      end;
    if ((choix = 'n') or (choix = 'N')) then
      begin
        playsound('menu.wav', 0,SND_ASYNC);
        exit;
      end;

    until FALSE;
  end;
end.
