unit imageET2;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET2;


implementation
procedure imgET2;
  begin
    couleurtexte(14);
    writeln('           _____');
    writeln('          /  _  \___  __');
    writeln('         /  /_\  \  \/ /');
    writeln('        /    |    \   /');
    writeln('        \____|__  /\_/');
    writeln('                \/');
    attendre(66);
    effacerEcran;
  end;
end.
