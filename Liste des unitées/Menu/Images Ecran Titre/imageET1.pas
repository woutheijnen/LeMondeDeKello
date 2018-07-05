unit imageET1;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET1;


implementation
procedure imgET1;
  begin
    couleurtexte(14);
    writeln('           _____');
    writeln('          /  _  \');
    writeln('         /  /_\  \');
    writeln('        /    |    \');
    writeln('        \____|__  /');
    writeln('                \/');
    attendre(66);
    effacerEcran;
  end;
end.
