unit imageET3;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET3;


implementation
procedure imgET3;
  begin
    couleurtexte(14);
    writeln('           _____');
    writeln('          /  _  \___  __ ____');
    writeln('         /  /_\  \  \/ // __ \');
    writeln('        /    |    \   /\  ___/');
    writeln('        \____|__  /\_/  \___  >');
    writeln('                \/          \/');
    attendre(66);
    effacerEcran;
  end;
end.
