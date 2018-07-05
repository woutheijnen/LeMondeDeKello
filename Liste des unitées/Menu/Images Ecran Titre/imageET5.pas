unit imageET5;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET5;


implementation
procedure imgET5;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\');
    writeln('        /    |    \   /\  ___/|   |  \  |');
    writeln('        \____|__  /\_/  \___  >___|  /__|');
    writeln('                \/          \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
