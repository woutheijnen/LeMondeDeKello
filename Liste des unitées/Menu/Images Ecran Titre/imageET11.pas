unit imageET11;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET11;


implementation
procedure imgET11;
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
    writeln('          \______ \ _____');
    writeln('           |    |  \\__  \');
    writeln('           |    `   \/ __ \_');
    writeln('          /_______  (____  /');
    writeln('                  \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
