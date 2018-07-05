unit imageET4;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET4;


implementation
procedure imgET4;
  begin
    couleurtexte(14);
    writeln('           _____');
    writeln('          /  _  \___  __ ____   ____');
    writeln('         /  /_\  \  \/ // __ \ /    \');
    writeln('        /    |    \   /\  ___/|   |  \');
    writeln('        \____|__  /\_/  \___  >___|  /');
    writeln('                \/          \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
