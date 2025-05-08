/*

crea_ab(Lista, ArbolBinario)
	es cierto al ArbolBinario unifica con in arbol binario
	balanceado que contiene todas las etiquetas Lista.


balanceado(Arbol)
	es cierto si un Arbol es balanceado
	
*/

crea_ab([], nil).

crea_ab([Cab | Resto], a(Cab, A1, A2)):-
	length(Resto, L),
	Med is L div 2,
	length(L1, Med),
	append(L1, L2, Resto),
	crea_ab(L1, A1),
	crea_ab(L2, A2).
	
	
	
altura(nil, 0).

altura(a(_, AI, AD), R):-
  altura(AI, RI),
  altura(AD, RD),
  Alt is max(RI, RD),
  R is Alt +1.
  
balanceado(nil).
balanceado(a(_, AI, AD)):-
	altura(AI, RI),
	altura(AD, RD),
	Dif is abs(RI-RD),
	Dif =< 1,
	balanceado(AI),
	balanceado(AD).
