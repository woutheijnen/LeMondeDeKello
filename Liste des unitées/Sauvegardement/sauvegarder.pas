unit sauvegarder;

interface
  uses
    Sysutils,
    ram,
    genererNombreAleatoire,
    GestionEcran,
    insererLignes;


  var
    disque: String[1];
{Ce variable contient le nom du volume ou la programme va écrire et est par défaut 'c' mais si
le programme n'arrive pas à sauvgarder sur c, le programme génère une lettre aléatoire et effectu
une tentative de sauvgarde sur ce volume au lieu de c.}
    fichierSauv: Text;
{Contient le nom et l'adresse du fichier à sauvegarder.}
    data: Integer;
    data2: String;
{Contiennes les données à sauvegarder.}


//Header
  procedure sauvegarde;


implementation
// Procédure de sauvegarde ----------------------------------------------------
procedure sauvegarde;
  begin
//Initialisation du volume par défaut: C
    disque := 'c';
    i := 0;

    repeat
    begin
    effacerEcran;
    couleurTexte(12);
    writeln('Sauvegardement en cours!');
    writeln('Appuyez sur "Continuer" si vous voyez des erreurs.');
    writeln('Veuillez attendre quelques secondes..');
    couleurTexte(15);

//Le programme fait une tentative de sauvgarde
//{$I-} permet de faire des tentatives, si le programme n'arrive pas à sauvgarder,
//le programme ignore l'instruction et enregistre une valeur non nul en IOResult.
    assign(fichierSauv,disque+':\Sauv_Kello.txt');
    {$I-}

//Créer le fichier de sauvgarde ou remplacer le si il existe déja
    rewrite(fichierSauv);
    {$I-}

//Ecriture du header de sauvgarde (pour pas confondre des autres fichiers textes ordinaires avec
//une sauvgarde) C'est une légère stratégie anti-corruption des données.
    writeln(fichierSauv,'Fichier de sauvegarde du jeu "Le Monde de Kello".');
    {$I-}

//Sauvegarde des données / écritures des lignes dans le fichier de sauvgarde.
    data := lireIntegerRam(1);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(2);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(3);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(4);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(5);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(6);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(7);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(8);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(9);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(14);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(15);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(16);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(17);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(18);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(19);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(20);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(21);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(22);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(23);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(24);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(25);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(26);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(27);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(28);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(29);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(30);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(31);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(32);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(33);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(35);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(56);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(66);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(73);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(74);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(75);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(76);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(77);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(78);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(79);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(80);
    writeln(fichierSauv,data);
    {$I-}
    data := lireIntegerRam(81);
    writeln(fichierSauv,data);
    {$I-}
    data2 := lireStringRam(1);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(2);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(3);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(4);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(5);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(6);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(7);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(8);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(10);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(15);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(33);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(34);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(35);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(36);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(37);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(38);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(39);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(40);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(41);
    writeln(fichierSauv,data2);
    {$I-}
    data2 := lireStringRam(42);
    writeln(fichierSauv,data2);
    {$I-}

//Fermer le fichier de sauvgarde (pour éviter des erreurs éventuels)
    close(fichierSauv);
    {$I-}
    {$I+}

//Compteur pour sauvgarder plusieus fois en cas d´erreur de système
    i := i+1;

    If (IOResult <> 0) then
    begin

//Si il y a u une erreur, on essaye un autre volume choisi au hasard
    aleatoire(0,25);
    disque:= chr(ord('a') + lireIntegerRam(0));
    end;
    if ((IOResult = 0) and (i > 250)) then
      begin
      lignes(9);
      writeln('                      ╒══════════════════════════════════╕');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('       Sauvgarde réussi!          '); couleurFond(0); writeln('│');
      write('                      │'); couleurFond(12);
      write('                                  '); couleurFond(0); writeln('│');
      writeln('                      ╘══════════════════════════════════╛');
      lignes(10);
      write(' Ma réponse: > '); readln;
      exit;
      end;
    end;
    until FALSE;
  end;
end.
