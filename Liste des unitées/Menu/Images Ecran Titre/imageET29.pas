unit imageET29;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET29;


implementation
procedure imgET29;
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
    write('         _____                     .___');   couleurtexte(15); writeln('                 .___');
    couleurtexte(2);
    write('        /     \   ____   ____    __| _/____');   couleurtexte(15); writeln('           __| _/____');
    couleurtexte(2);
    write('       /  \ /  \ /  _ \ /    \  / __ |/ __ \');   couleurtexte(15); writeln('         / __ |/ __ \');
    couleurtexte(2);
    write('      /    Y    (  <_> )   |  \/ /_/ \  ___/');   couleurtexte(15); writeln('        / /_/ \  ___/');
    couleurtexte(2);
    write('      \____|__  /\____/|___|  /\____ |\___  >');   couleurtexte(15); writeln('       \____ |\___  >');
    couleurtexte(2);
    write('              \/            \/      \/    \/');   couleurtexte(15); writeln('            \/    \/');
    couleurtexte(5);
    writeln('                  ____  __.          .__    .__    _______');
    write('                 |    |/ _|   ____   |  |   |  |   \   _  \');   couleurtexte(15); writeln('     COPYRIGHT');
    couleurtexte(5);
    write('                 |      <   _/ __ \  |  |   |  |   /  /_\  \');   couleurtexte(15); writeln('       2013');
    couleurtexte(5);
    writeln('                 |    |  \  \  ___/  |  |__ |  |__ \  \_/   \');
    writeln('                 |____|__ \  \___  > |____/ |____/  \_____  /');
    writeln('                         \/      \/                       \/');
    attendre(66);
    effacerEcran;
  end;
end.
