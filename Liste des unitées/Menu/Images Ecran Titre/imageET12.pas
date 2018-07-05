unit imageET12;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET12;


implementation
procedure imgET12;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_ __ _________   ____   ______');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\  |  \_  __ \_/ __ \ /  ___/');
    writeln('        /    |    \   /\  ___/|   |  \  | |  |  /|  | \/\  ___/ \___ \');
    writeln('        \____|__  /\_/  \___  >___|  /__| |____/ |__|    \___  >____  >');
    writeln('                \/          \/     \/                        \/     \/');
    couleurtexte(15);
    writeln('          ________');
    writeln('          \______ \ _____    ____');
    writeln('           |    |  \\__  \  /    \');
    writeln('           |    `   \/ __ \|   |  \');
    writeln('          /_______  (____  /___|  /');
    writeln('                  \/     \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
