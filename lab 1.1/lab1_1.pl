male(alex).
male(maxim).
male(amir).
male(petya).
male(vova).
female(glasha).
female(kamila).
female(marina).
female(masha).
female(marusia).
parent(alex,marina).
parent(kamila,marina).
parent(masha,kamila).
parent(masha,marusia).
parent(amir,marusia).
parent(vova,alex).
parent(vova,petya).
parent(vova,glasha).


aunt(X,Y):-female(X),not(parent(X,Y)),parent(Parent,Y),
    parent(Parent1,Parent),parent(Parent1,X).
granddaughter(X,Y):-female(X),parent(Y,Parent),parent(Parent,X).



