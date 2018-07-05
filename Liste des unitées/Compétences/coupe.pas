unit coupe;

interface
  uses
    Sysutils,
    ram,
    GestionEcran;


//Header
  procedure couper;


implementation
// Procedure de coupe ---------------------------------------------------------
procedure couper;
  begin
    effacerEcran;
    writeln('Coupe coupe coupe...');
    readln;
  end;
end.
