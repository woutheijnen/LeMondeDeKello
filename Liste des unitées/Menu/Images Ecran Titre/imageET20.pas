unit imageET20;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET20;


implementation
procedure imgET20;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_ __ _________   ____   ______');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\  |  \_  __ \_/ __ \ /  ___/');
    writeln('        /    |    \   /\  ___/|   |  \  | |  |  /|  | \/\  ___/ \___ \');
    writeln('        \____|__  /\_/  \___  >___|  /__| |____/ |__|    \___  >____  >');
    writeln('                \/          \/     \/                        \/     \/');
    couleurtexte(15);
    write('          ________');   couleurtexte(2); writeln('                                  .__');
    couleurtexte(15);
    write('          \______ \ _____    ____   ______');   couleurtexte(2); writeln('          |  |   ____');
    couleurtexte(15);
    write('           |    |  \\__  \  /    \ /  ___/');   couleurtexte(2); writeln('          |  | _/ __ \');
    couleurtexte(15);
    write('           |    `   \/ __ \|   |  \\___ \');   couleurtexte(2); writeln('           |  |_\  ___/');
    couleurtexte(15);
    write('          /_______  (____  /___|  /____  >');   couleurtexte(2); writeln('          |____/\___  >');
    couleurtexte(15);
    write('                  \/     \/     \/     \/');   couleurtexte(2); writeln('                     \/');
    writeln('         _____                     .___');
    writeln('        /     \   ____   ____    __| _/____');
    writeln('       /  \ /  \ /  _ \ /    \  / __ |/ __ \');
    writeln('      /    Y    (  <_> )   |  \/ /_/ \  ___/');
    writeln('      \____|__  /\____/|___|  /\____ |\___  >');
    writeln('              \/            \/      \/    \/');
    attendre(66);
    effacerEcran;
  end;
end.
