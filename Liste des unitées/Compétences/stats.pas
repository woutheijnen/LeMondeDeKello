unit stats;

interface
  uses
    Sysutils,
    ram,
    gestionEcran,
    insererLignes,
    formulePv,
    formuleAttaque,
    formuleDefense,
    formuleVitesse;


  var
    nivTotal: Integer;
{Contiens la somme de tout les niveaus du joueur.}
    pvPersMax: Integer;
{Contiens la capacité maximale des pv du joueur.}
    attaquePers, defensePers, vitessePers: Integer;
{Contiens combien de points d´attaque, etc le joueur a.}


//Header
  procedure statMenu;


implementation
procedure statMenu;
  begin
    nivCombat := lireIntegerRam(1);
    nivMinier := lireIntegerRam(2);
    nivCoupe := lireIntegerRam(3);
    nivPeche := lireIntegerRam(4);
    nivCuisine := lireIntegerRam(5);
    nivEmpennage := lireIntegerRam(6);
    nivForge := lireIntegerRam(7);
    nivEtude := lireIntegerRam(8);
    nivTotal := nivCombat + nivMinier + nivCoupe + nivPeche + nivCuisine + nivEmpennage + nivForge + nivEtude;
    pvPersActuel := lireIntegerRam(9);
    pvPersMax := calculPvPersMax;
    attaquePers := calculAttaquePers;
    defensePers := calculDefensePers;
    vitessePers := calculVitessePers;
    pClasse := lireStringRam(4);
    viAttaque := lireIntegerRam(17);
    viDefense := lireIntegerRam(18);
    viVitesse := lireIntegerRam(19);
    viPv := lireIntegerRam(20);
    veAttaque := lireIntegerRam(21);
    veDefense := lireIntegerRam(22);
    veVitesse := lireIntegerRam(23);
    vePv := lireIntegerRam(24);
    xpMinier := lireIntegerRam(29);
    xpCoupe := lireIntegerRam(28);
    xpPeche := lireIntegerRam(27);
    xpCuisine := lireIntegerRam(33);
    xpEmpennage := lireIntegerRam(32);
    xpForge := lireIntegerRam(30);
    xpEtude := lireIntegerRam(31);
    xpCombat := lireIntegerRam(26);
    statutPers := lireStringRam(15);
    pouvArmePers := lireIntegerRam(66);
    sort1 := lireStringRam(5);
    sort2 := lireStringRam(6);
    sort3 := lireStringRam(7);
    sort4 := lireStringRam(8);

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        |    Vos statistiques - Combat    |');
    writeln('                         ---------------------------------');
    lignes(2);
    writeln('      Vos statistiques de combat:');
    lignes(1);
    writeln('                  Points de Vie             : ',pvPersActuel,' / ',pvPersMax);
    writeln('                  Attaque                   : ',attaquePers);
    writeln('                  Defense                   : ',defensePers);
    writeln('                  Vitesse                   : ',vitessePers);
    writeln('                  Pouvoir de votre arme     : ',pouvArmePers);
    lignes(1);
    writeln('                  Statut                    : ',statutPers);
    writeln('                  Classe                    : ',pClasse);
    lignes(1);
    if ((pClasse = 'Mage') or (pClasse = 'Mage Noir') or (pClasse = 'Hybride')) then
      begin
        writeln('                  Sort 1                    : ',sort1);
        writeln('                  Sort 2                    : ',sort2);
        writeln('                  Sort 3                    : ',sort3);
        writeln('                  Sort 4                    : ',sort4);
      end else lignes(4);
    lignes(1);
    writeln('  - Page 1');
    lignes(1);
    write(' Ma réponse: > '); readln;

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        | Vos statistiques - Compétences  |');
    writeln('                         ---------------------------------');
    lignes(2);
    writeln('            Vos niveaux:');
    lignes(1);
    writeln('                    Niveau de Minier  : ',nivMinier,' (',xpMinier,' xp restant)');
    writeln('                    Niveau de Coupe   : ',nivCoupe,' (',xpCoupe,' xp restant)');
    writeln('                    Niveau de Pêche   : ',nivPeche,' (',xpPeche,' xp restant)');
    writeln('                    Niveau de Cuisine : ',nivCuisine,' (',xpCuisine,' xp restant)');
    writeln('                    Niveau d´Empennage: ',nivEmpennage,' (',xpEmpennage,' xp restant)');
    writeln('                    Niveau de Forge   : ',nivForge,' (',xpForge,' xp restant)');
    writeln('                    Niveau d´Etude    : ',nivEtude,' (',xpEtude,' xp restant)');
    lignes(1);
    writeln('                    Niveau de Combat  : ',nivCombat,' (',xpCombat,' xp restant)');
    writeln('                    Niveau total      : ',nivTotal);
    lignes(4);
    writeln('  - Page 2');
    lignes(1);
    write(' Ma réponse: > '); readln(choix);

    effacerEcran;
    lignes(1);
    writeln('                         ---------------------------------');
    writeln('                        |    Vos statistiques - Combat    |');
    writeln('                         ---------------------------------');
    lignes(2);
    writeln('   Vos statistiques de combat avancé:');
    lignes(2);
    writeln('                  Valeur Individuel Pv     : ',viPv);
    writeln('                  Valeur Individuel Attaque: ',viAttaque);
    writeln('                  Valeur Individuel Defense: ',viDefense);
    writeln('                  Valeur Individuel Vitesse: ',viVitesse);
    lignes(2);
    writeln('                  Valeur d´Effort Pv       : ',vePv);
    writeln('                  Valeur d´Effort Attaque  : ',veAttaque);
    writeln('                  Valeur d´Effort Defense  : ',veDefense);
    writeln('                  Valeur d´Effort Vitesse  : ',veVitesse);
    lignes(3);
    writeln('  - Page 3');
    lignes(1);
    write(' Ma réponse: > '); readln;
  end;
end.
