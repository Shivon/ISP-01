% Boer = Riese = m
% Bestla = Riesin = w
% Grid = Riesin = w

male(boer).
male(odin).
male(vili).
male(ve).
male(vidar).
male(thor).
male(magni).
male(modi).
male(balder).
male(hoed).
male(hermodur).
male(bragi).
male(tyr).
male(forseti).

female(bestla).
female(frigg).
female(joerd).
female(grid).
female(nanna).
female(sif).
female(idun).

% spouse/2
% spouse(X,Y), male X is married to female Y
spouse(boer, bestla).
spouse(odin, frigg).
spouse(odin, joerd).
spouse(odin, grid).
spouse(thor, sif).
spouse(balder, nanna).
spouse(bragi, idun).

% parent/2
% parent(X, Y), X is parent of Y
parent(boer, odin).
parent(boer, vili).
parent(boer, ve).
parent(bestla, odin).
parent(bestla, vili).
parent(bestla, ve).

parent(odin, balder).
parent(odin, hoed).
parent(odin, hermodur).
parent(odin, bragi).
parent(odin, tyr).
parent(odin, thor).
parent(odin, vidar).
parent(frigg, balder).
parent(frigg, hoed).
parent(frigg, hermodur).
parent(frigg, bragi).
parent(frigg, tyr).
parent(joerd, thor).
parent(grid, vidar).

parent(balder, forseti).
parent(nanna, forseti).
parent(thor, magni).
parent(thor, modi).
parent(sif, magni).
parent(sif, modi).


% father/2
% father(X, Y), X is father of Y
father(X, Y) :- parent(X, Y), male(X), !.

% mother/2
% mother(X, Y), X is mother of Y
mother(X, Y) :- parent(X, Y), female(X), !.

% brother/2
% brother(X, Y), X is brother of Y
brother(X, Y) :- male(X), mother(M, X), mother(M, Y), father(F, X), father(F, Y), X \= Y.

% sister/2
% sister(X, Y), X is sister of Y
sister(X, Y) :- female(X), mother(M, X), mother(M, Y), father(F, X), father(F, Y), X \= Y.

% half_brother/2
% nephew/2
% granduncle/2
