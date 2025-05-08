/*

cuenta_nodos(+Arbol_binario, ?Num_nodos)
es cierto cuando Num_nodos unifica con el numero de nodos de Arbol_binario

P(n0) -> n0 en Arboles binarios en null
P(n-1) -> P(n)

*/


arbol1(
		a(1, 
			a(2, nil, nil), 
			a(3,nil, nil))).
		
arbol2(
		a(1, a(2, a(4,nil,nil), a(5,nil,nil)), 
		a(3, a(6, nil, nil), a(7, a(8, nil, nil))))).

cuenta_nodos(nil, 0).

cuenta_nodos(a(_, AI, AD), R):-
  cuenta_nodos(AI, RI),
  cuenta_nodos(AD, RD),
  R is RI + RD + 1.
