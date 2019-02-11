padreDe(juan,maria).
padreDe(pablo,juan).
padreDe(pablo,marcela).
padreDe(carlos,debora).
padreDe(luisa,debora).
padreDe(debora,han).
padreDe(sam,lola).
padreDe(ana,lola).
padreDe(sam,juana).
padreDe(ana,juana).
padreDe(lola,pati).
padreDe(john,pati).


hijoDe(A,B):-padreDe(B,A).

abuelode(A,B) :- padreDe(A,C), padreDe(C,B).

hermanode(A,B) :- padreDe(C,A), padreDe(C,B), A \== B.
escasado(A,B) :- padreDe(A,C), padreDe(B,C), A \== B.
esfeliz(A):- not(escasado(A,_)).

familiarde(A,B) :- padreDe(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).

