transportiere(1, Von, _, Nach) :-
  write('Bringe eine Scheibe von '), write(Von), write(' nach '), write(Nach), write(.), nl.

transportiere(AnzahlScheiben, Von, Lager, Nach) :-
  % AnzahlScheiben > 1 is for the first solution irrelevant but sif you request an alternative,
  % you'll only get one with this commented out because this rule will then be an alternative to the first one
  AnzahlScheiben > 1,
  ObereScheiben is AnzahlScheiben - 1,
  transportiere(ObereScheiben, Von, Nach, Lager),
  transportiere(1, Von, Lager, Nach),
  transportiere(ObereScheiben, Lager, Von, Nach).
