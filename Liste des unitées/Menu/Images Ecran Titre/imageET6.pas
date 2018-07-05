unit imageET6;

interface
  uses
    Sysutils,
    GestionEcran;


//Header
  procedure imgET6;


implementation
procedure imgET6;
  begin
    couleurtexte(14);
    writeln('           _____                      __');
    writeln('          /  _  \___  __ ____   _____/  |_ __ __');
    writeln('         /  /_\  \  \/ // __ \ /    \   __\  |  \');
    writeln('        /    |    \   /\  ___/|   |  \  | |  |  /');
    writeln('        \____|__  /\_/  \___  >___|  /__| |____/');
    writeln('                \/          \/     \/');
    attendre(66);
    effacerEcran;
  end;
end.
