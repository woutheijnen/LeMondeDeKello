unit imageET8;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET8;


implementation
procedure imgET8;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_ __ _________   ____');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\  |  \_  __ \_/ __ \');
    writeln('        /    |    \   /\  ___/|   |  \  | |  |  /|  | \/\  ___/');
    writeln('        \____|__  /\_/  \___  >___|  /__| |____/ |__|    \___  >');
    writeln('                \/          \/     \/                        \/');
    attendre(66);
    effacerEcran;
  end;
end.
