unit genererNomAleatoire;

interface
  uses
    SysUtils,
    genererNombreAleatoire,
    ram;


//Header
  procedure nomAleaM;
  procedure nomAleaF;


implementation
//Procedure nom al�atoire masculin---------------------------------------------
procedure nomAleaM;
  begin
    aleatoire(1,100);
    alea := lireIntegerRam(0);
    case alea of
      1: nom:= 'Lucas';
      2: nom:= 'Enzo';
      3: nom:= 'Nathan';
      4: nom:= 'Mathis';
      5: nom:= 'Lou�s';
      6: nom:= 'Hugo';
      7: nom:= 'Maxime';
      8: nom:= 'Jules';
      9: nom:= 'Thomas';
      10: nom:= 'Tom';
      11: nom:= 'Rapha�l';
      12: nom:= 'Gabri�l';
      13: nom:= 'Math�o';
      14: nom:= 'Th�o';
      15: nom:= 'Noah';
      16: nom:= 'Ethan';
      17: nom:= 'Cl�ment';
      18: nom:= 'Yanis';
      19: nom:= 'Arthur';
      20: nom:= 'L�o';
      21: nom:= 'Louka';
      22: nom:= 'Paul';
      23: nom:= 'Antoine';
      24: nom:= 'Evan';
      25: nom:= 'Adam';
      26: nom:= 'Baptiste';
      27: nom:= 'Alexandre';
      28: nom:= 'Axel';
      29: nom:= 'Quentin';
      30: nom:= 'Noa';
      31: nom:= 'Alexis';
      32: nom:= 'Ma�l';
      33: nom:= 'Maxence';
      34: nom:= 'Tim�o';
      35: nom:= 'Nolan';
      36: nom:= 'No�';
      37: nom:= 'Sacha';
      38: nom:= 'Valentin';
      39: nom:= 'Romain';
      40: nom:= 'Mohamed';
      41: nom:= 'Rayan';
      42: nom:= 'Kylian';
      43: nom:= 'Matt�o';
      44: nom:= 'Esteban';
      45: nom:= 'Mathys';
      46: nom:= 'Victor';
      47: nom:= 'Samu�l';
      48: nom:= 'Gabin';
      49: nom:= 'Martin';
      50: nom:= 'Simon';
      51: nom:= 'Pierre';
      52: nom:= 'Lorenzo';
      53: nom:= 'Julien';
      54: nom:= 'Matthieu';
      55: nom:= 'Adrien';
      56: nom:= 'Benjamin';
      57: nom:= 'Lenny';
      58: nom:= 'Titouan';
      59: nom:= 'Nicolas';
      60: nom:= 'Aaron';
      61: nom:= 'Dylan';
      62: nom:= 'Corentin';
      63: nom:= 'Mathias';
      64: nom:= 'Tristan';
      65: nom:= 'Robin';
      66: nom:= 'Amine';
      67: nom:= 'Bastien';
      68: nom:= 'Antonin';
      69: nom:= 'Ilyes';
      70: nom:= 'Florian';
      71: nom:= 'Eliott';
      72: nom:= 'Erwan';
      73: nom:= 'Ilan';
      74: nom:= 'Anthony';
      75: nom:= 'Lilian';
      76: nom:= 'Mat�o';
      77: nom:= 'Dorian';
      78: nom:= 'Liam';
      79: nom:= 'Rafa�l';
      80: nom:= 'Thibault';
      81: nom:= 'Kevin';
      82: nom:= 'Noam';
      83: nom:= 'Gaspard';
      84: nom:= 'William';
      85: nom:= 'Jean';
      86: nom:= 'Marius';
      87: nom:= 'Oscar';
      88: nom:= 'Luca';
      89: nom:= 'Mehdi';
      90: nom:= 'Ryan';
      91: nom:= 'Killian';
      92: nom:= 'Di�go';
      93: nom:= 'David';
      94: nom:= 'Guillaume';
      95: nom:= 'Soffiane';
      96: nom:= 'Na�l';
      97: nom:= 'Yann';
      98: nom:= 'Kenzo';
      99: nom:= 'Remi';
      100: nom:= 'Eliot';
    end;
    ecrireStringRam(1,nom);
   end;


//Procedure nom al�atoire f�minin----------------------------------------------
procedure nomAleaF;
  begin
    aleatoire(1,100);
    alea := lireIntegerRam(0);
    case alea of
      1: nom:= 'Emma';
      2: nom:= 'L�a';
      3: nom:= 'Jade';
      4: nom:= 'Manon';
      5: nom:= 'Chlo�';
      6: nom:= 'In�s';
      7: nom:= 'Camille';
      8: nom:= 'Clara';
      9: nom:= 'Sarah';
      10: nom:= 'Lola';
      11: nom:= 'Zo�';
      12: nom:= 'Louise';
      13: nom:= 'Eva';
      14: nom:= 'Ana�s';
      15: nom:= 'Lilou';
      16: nom:= 'Ma�lys';
      17: nom:= 'Lucie';
      18: nom:= 'Romane';
      19: nom:= 'Lena';
      20: nom:= 'Lina';
      21: nom:= 'Oc�ane';
      22: nom:= 'Juliette';
      23: nom:= 'Louna';
      24: nom:= 'Marie';
      25: nom:= 'C�lia';
      26: nom:= 'Mathilde';
      27: nom:= 'Julie';
      28: nom:= 'Jeanne';
      29: nom:= 'Lisa';
      30: nom:= 'No�mie';
      31: nom:= 'Lou';
      32: nom:= 'Charlotte';
      33: nom:= 'Cl�mence';
      34: nom:= 'Laura';
      35: nom:= 'Ambre';
      36: nom:= 'Pauline';
      37: nom:= 'Alicia';
      38: nom:= 'Ma�va';
      39: nom:= 'Justine';
      40: nom:= 'Louane';
      41: nom:= 'Anna';
      42: nom:= 'M�lissa';
      43: nom:= 'Nina';
      44: nom:= 'Luna';
      45: nom:= 'Ma�lle';
      46: nom:= 'Margot';
      47: nom:= 'Lily';
      48: nom:= 'Alice';
      49: nom:= 'Lana';
      50: nom:= 'Elisa';
      51: nom:= 'Elsa';
      52: nom:= 'Julia';
      53: nom:= 'Margaux';
      54: nom:= 'Rose';
      55: nom:= 'Emilie';
      56: nom:= 'Elise';
      57: nom:= 'L�ane';
      58: nom:= 'L�onie';
      59: nom:= 'Marion';
      60: nom:= 'M�lina';
      61: nom:= 'Agathe';
      62: nom:= 'Elo�se';
      63: nom:= 'Sara';
      64: nom:= 'Yasmine';
      65: nom:= 'Morgane';
      66: nom:= 'Amandine';
      67: nom:= 'Faustine';
      68: nom:= 'Kenza';
      69: nom:= 'Ana�lle';
      70: nom:= 'Valentine';
      71: nom:= 'Carla';
      72: nom:= 'Candice';
      73: nom:= 'Lo�ne';
      74: nom:= 'Marine';
      75: nom:= 'El�na';
      76: nom:= 'Lise';
      77: nom:= 'Gabri�lle';
      78: nom:= 'Capucine';
      79: nom:= 'Olivia';
      80: nom:= 'Sofia';
      81: nom:= 'Victoria';
      82: nom:= 'Salom�';
      83: nom:= 'M�line';
      84: nom:= 'Ninon';
      85: nom:= 'Maya';
      86: nom:= 'Ang�lina';
      87: nom:= 'Ad�le';
      88: nom:= 'Clo�';
      89: nom:= 'H�lo�se';
      90: nom:= 'Am�lie';
      91: nom:= 'L�ana';
      92: nom:= 'Maissa';
      93: nom:= 'El�a';
      94: nom:= 'Cassandra';
      95: nom:= 'Emy';
      96: nom:= 'Aya';
      97: nom:= 'Andr�a';
      98: nom:= 'Mila';
      99: nom:= 'Fanny';
      100: nom:= 'Lyna';
    end;
    ecrireStringRam(1,nom);
  end;
end.
