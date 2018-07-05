unit imageET7;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET7;


implementation
procedure imgET7;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_ __ _________');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\  |  \_  __ \');
    writeln('        /    |    \   /\  ___/|   |  \  | |  |  /|  | \/');
    writeln('        \____|__  /\_/  \___  >___|  /__| |____/ |__|');
    writeln('                \/          \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
