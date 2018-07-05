unit ecranTitre;

interface
  uses
    Sysutils,
    mmSystem,
    menu,
    gestionEcran,
    imageET1,
    imageET2,
    imageET3,
    imageET4,
    imageET5,
    imageET6,
    imageET7,
    imageET8,
    imageET9,
    imageET10,
    imageET11,
    imageET12,
    imageET13,
    imageET14,
    imageET15,
    imageET16,
    imageET17,
    imageET18,
    imageET19,
    imageET20,
    imageET21,
    imageET22,
    imageET23,
    imageET24,
    imageET25,
    imageET26,
    imageET27,
    imageET28,
    imageET29,
    imageET30,
    imageET31,
    imageET32;


//Header
  procedure demarEcranTitre;


implementation
procedure demarEcranTitre;
  begin
    playsound('titre.wav',0,SND_ASYNC);
    attendre(250);
    imgET1;
    imgET2;
    imgET3;
    imgET4;
    imgET5;
    imgET6;
    imgET7;
    imgET8;
    imgET9;
    imgET10;
    imgET11;
    imgET12;
    imgET13;
    imgET14;
    imgET15;
    imgET16;
    imgET17;
    imgET18;
    imgET19;
    imgET20;
    imgET21;
    imgET22;
    imgET23;
    imgET24;
    imgET25;
    imgET26;
    imgET27;
    imgET28;
    imgET29;
    imgET30;
    imgET31;
    imgET32;

    demarMenu;

  end;
end.
