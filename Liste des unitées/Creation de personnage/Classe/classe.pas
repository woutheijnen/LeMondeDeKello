unit classe;

interface
  uses
    SysUtils,
    GestionEcran,
    ram,
    classeTitre,
    insererLignes,
    questionImage,
    initialisationDesStats;


  var
    sortie: Boolean;
{Permet de sortir du boucle d�s que le joueur confirme son choix de classe.}


//Header
  procedure choisirClasse;


implementation
//Proc�dure de choisissement d'une classe de personage ------------------------
procedure choisirClasse;
  begin
    repeat
    repeat
    effacerEcran;
    titreClasse;
    writeln('                  1) GUERRIER: Equip� avec un �p�e, un bouclier');
    writeln('                     et une bonne protection corporelle les guerriers');
    writeln('                     combattent leurs enemies. Les guerriers sont');
    writeln('                     efficaces contre tout sorte de combat corps �');
    writeln('                     corps et les fl�ches des rodeurs ne font rien');
    writeln('                     parcontre les guerriers sont lent et ont une');
    writeln('                     faiblesse contre la magie.');
    writeln('        _____     2) RODEUR: Equip� avec un arc, des fl�ches et une');
    writeln('       / ___ \       protection corporelle fait par la peau d�animaux.');
    writeln('      ( (   ) )      Les rodeurs sont rapides mais ont une d�fense');
    writeln('       \/  / /       m�diocre surtout en corps � corps. Ils sont');
    writeln('          ( (        efficaces contre les mages.');
    writeln('          | |     3) MAGE: Les mages sont tr�s puissants mais n�ont');
    writeln('          (_)        pas beaucoup de d�fense. Ils sont efficaces contre');
    writeln('           _         les guerriers mais les fl�ches des rodeurs d�chirent');
    writeln('          (_)        leurs robes magiques. Ils ont des sors d�attaque mais');
    writeln('                     aussi de soigne.');
    writeln('                              (Appuyez sur "entr�e" pour la page suivante.)');
    write(' Ma r�ponse: > '); readln;
    effacerEcran;
    titreClasse;
    writeln('                  4) MAGE NOIR: Les mages noires ont les m�mes puissances');
    writeln('                     et les m�mes faiblesse que les mages mais sont');
    writeln('                     sp�cialis�es dans des domaines tr�s obscures');
    writeln('                     comme la corruption, le sang, l�ombre et les mal�dictions.');
    writeln('                     Ils sont plus sp�cialis�es en attaque que en d�fense');
    writeln('                     et leurs sors font souvent des �tats horribles.');
    writeln('                  5) VAMPIRE: Les vampires sont tr�s rapides; ont une');
    writeln('        _____        d�fense comme les rodeurs et peuvent mordre leurs enemies');
    writeln('       / ___ \       pour soigner leurs pv.');
    writeln('      ( (   ) )   6) HYBRIDE: Les hybrides ne sont pas sp�cifiquement');
    writeln('       \/  / /       sp�cialis�es dans quelquechose. Ils ont une attaque');
    writeln('          ( (        une d�fense, et une vitesse moyenne et ils peuvent lancer');
    writeln('          | |        des sorts.');
    writeln('          (_)');
    writeln('           _');
    writeln('          (_)');
    writeln;
    writeln('                              (Appuyez sur "entr�e" pour la page suivante.)');
    write(' Ma r�ponse: > '); readln;
    effacerEcran;
    titreClasse;
    writeln('                 Donc vous choissisez quoi?');
    lignes(1);
    writeln('                     1: Guerrier         ||     4: Mage Noir');
    writeln('                                         ||');
    writeln('                     2: Rodeur           ||     5: Vampire');
    writeln('                                         ||');
    writeln('                     3: Mage             ||     6: Hybride');
    lignes(1);
    writeln('        _____                          Autre touche: Relire les');
    writeln('       / ___ \                         informations sur les');
    writeln('      ( (   ) )                        classes.');
    writeln('       \/  / /');
    writeln('          ( (');
    writeln('          | |');
    writeln('          (_)');
    writeln('           _');
    writeln('          (_)');
    writeln('                             (Appuyez sur "entr�e" pour confirmer votre choix.)');
    write(' Ma r�ponse: > '); readln(choix);
    if (choix = '1') then
                        begin
                        pClasse := 'Guerrier';
                        sortie := TRUE;
                        end;
    if (choix = '2') then
                        begin
                        pClasse := 'Rodeur';
                        sortie := TRUE;
                        end;
    if (choix = '3') then
                        begin
                        pClasse := 'Mage';
                        sortie := TRUE;
                        end;
    if (choix = '4') then
                        begin
                        pClasse := 'Mage Noir';
                        sortie := TRUE;
                        end;
    if (choix = '5') then
                        begin
                        pClasse := 'Vampire';
                        sortie := TRUE;
                        end;
    if (choix = '6') then
                        begin
                        pClasse := 'Hybride';
                        sortie := TRUE;
                        end;
    until sortie = TRUE;
    effacerEcran;
    nom := lireStringRam(1);
    lignes(7);
    writeln('                         ---------------------------------');
    writeln('                            Etes-vous s�r ', nom,'?');
    writeln('                       Vous-avez choisi d��tre un ', pClasse,'.');
    writeln('                        "o" pour Oui, autre touche pour Non');
    writeln('                         ________________________________');
    question;
    write(' Ma r�ponse: > '); readln(choix);
    if (choix = 'n') or (choix = 'M') then sortie := FALSE;
    if (choix = 'o') or (choix = 'O') then
      begin
        ecrireStringRam(4, pClasse);
        sortie := TRUE;
      end;
    until sortie = TRUE;
    initialisationCreation;
    effacerEcran;
  end;
end.
