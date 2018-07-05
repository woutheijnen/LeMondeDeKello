unit histoire;


interface
  uses
    SysUtils,
    GestionEcran,
    mmSystem;


  var
    choix: String;
{Permet de choisir si le joueur veut passer � la page suivante ou revenir au menu.}


//Header
  procedure hist;


implementation
//Proc�dure d'affichage de l'histoire -----------------------------------------
procedure hist;
 begin
  repeat
    effacerEcran;
    writeln('   \  **  /              ---------------------------------');
    writeln('    *####*              |  La cr�ation du monde de Kello  |');
    writeln(' - *#O##O#*-             ---------------------------------');
    writeln('    *#__/*');
    writeln('   /  **  \       Le monde de Kello est une monde remplis de s�cr�ts,');
    writeln( '                        tr�soirs, mais aussi de dangers...');
    writeln;
    writeln;
    writeln('          Tout est commenc� par un sage, un sage extr�mement allaise avec');
    writeln('        la magie noire. Ce sage avait un reve de creer son propre territoire,');
    writeln('              son propre monde et apres beaucoup d�exp�riments rat�es,');
    writeln('         il r�ussit � cr�er son propre monde parfait - et il l�app�le "Kello",');
    writeln('                         soit "temps", dans son langage..');
    writeln;
    writeln;
    writeln('          Plusieurs si�cles passent,  et finalement le sage meurt acause des');
    writeln('           causes naturelles. Petit a petit differents creatures commencent');
    writeln('            a immigrer dans le monde de Kello - des creatures non violentes,');
    writeln('             mais aussi des creatures extr�mement diaboliques et violents,');
    writeln('                     cherchant le pouvoir par le chaos et le mal.');
    writeln;
    writeln('  - Page 1');
    writeln('Entrer "s" pour la page suivante, ou "q" pour revenir au menu principal');
    writeln;
    write(' Ma r�ponse: > '); readln(choix);
    if ((choix = 'q') or (choix = 'Q')) then
      begin
        playsound('menu.wav', 0,SND_ASYNC);
        exit;
      end
    else if ((choix = 's') or (choix = 'S')) then
      begin
        effacerEcran;
        writeln('   \  **  /              ---------------------------------');
        writeln('    *####*              |  Votre histoire, votre destin   |');
        writeln(' - *#O##O#*-             ---------------------------------');
        writeln('    *#__/*');
        writeln('   /  **  \');
        writeln('               Vous �tes un aventurier, avec un destin inconnu,');
        writeln('                 parcourez le monde de Kello et d�couvrez votre');
        writeln('               vrai destin, votre histoire et peut etre m�me plus!');
        writeln;
        writeln;
        writeln('            Decouvrez des tr�soirs, sur la creation du monde de Kello');
        writeln('             et votre destination finale. Mais attention aux dangers!');
        writeln('               Les creatures diaboliques et chaotiques ne cherchent pas');
        writeln('           le repos, ils vous cherchent, parce que vous �tes l�elu du sage.');
        writeln;
        writeln;
        writeln('          Les creatures non violantes sont vos amis, ils vous guiderais vers');
        writeln('       votre destination finale pour que vous pourrez sauver le monde de Kello');
        writeln('                     des creatures diaboliques et chaotique.');
        writeln;
        writeln('                          B o n      c o u r a g e   ! ');
        writeln('                                       Vous en aurez besoin.. ');
        writeln('  - Page 2');
        writeln('Appuyez sur la touche "entr�e" pour revenir au menu principale ');
        write(' Ma r�ponse: > '); readln;
        playsound('menu.wav',0,SND_ASYNC);
        exit;
      end;
   until FALSE;
 end;
end.
