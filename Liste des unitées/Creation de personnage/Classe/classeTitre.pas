unit classeTitre;

interface
  uses
    SysUtils,
    insererLignes;


//Header
  procedure titreClasse;


implementation
  procedure titreClasse;
    begin
      writeln('        ---------------------------------------------------------------');
      writeln('                            Quelle est votre class?');
      writeln('                     Dans le monde de Kello, il existe');
      writeln('                             6 classes différentes:');
      writeln('        ---------------------------------------------------------------');
      lignes(1);
    end;
end.
