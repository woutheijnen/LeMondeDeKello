unit verificationNom;

interface
  uses
    SysUtils,
    genererNomAleatoire,
    ram;


//Header
  procedure verifNom(nom: String);


implementation
procedure verifNom(nom: String);
  begin
    sexe := lireStringRam(2);
    nom := lireStringRam(1);
    if sexe = 'm' then
    begin
    if nom = '' then nomAleaM;
    if nom = ' ' then nomAleaM;
    if nom = '  ' then nomAleaM;
    if nom = '   ' then nomAleaM;
    if nom = '    ' then nomAleaM;
    if nom = '     ' then nomAleaM;
    if nom = '      ' then nomAleaM;
    if nom = '       ' then nomAleaM;
    if nom = '        ' then nomAleaM;
    if nom = '         ' then nomAleaM;
    if nom = '          ' then nomAleaM;
    end;
    if sexe = 'f' then
    begin
    if nom = '' then nomAleaF;
    if nom = ' ' then nomAleaF;
    if nom = '  ' then nomAleaF;
    if nom = '   ' then nomAleaF;
    if nom = '    ' then nomAleaF;
    if nom = '     ' then nomAleaF;
    if nom = '      ' then nomAleaF;
    if nom = '       ' then nomAleaF;
    if nom = '        ' then nomAleaF;
    if nom = '         ' then nomAleaF;
    if nom = '          ' then nomAleaF;
    end;
  end;
end.
