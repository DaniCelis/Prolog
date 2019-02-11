padreDe(sam,lola).
padreDe(ana,lola).
padreDe(sam,juana).
padreDe(ana,juana).
padreDe(lola,pati).
padreDe(john,pati).
padreDe(juana,dani).
padreDe(sergio,dani).


hijoDe(A,B):-padreDe(B,A).

abuelode(A,B) :- padreDe(A,C), padreDe(C,B).

hermanode(A,B) :- padreDe(C,A), padreDe(C,B), A \== B.
primode(A,B) :- padreDe(C,A), padreDe(D,B), hermanode(C,D).
tiode(A,B) :- padreDe(C,B), hermanode(A,C).
sobrinode(A,B) :- tiode(B,A).
nietode(A,B) :- abuelode(B,A).

escasado(A,B) :- padreDe(A,C), padreDe(B,C), A \== B.
esfeliz(A):- not(escasado(A,_)).

familiarde(A,B) :- padreDe(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).


