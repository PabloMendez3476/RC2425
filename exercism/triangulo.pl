/*

triangle(A, B, C , R).
	es cierto si R unifica con "equilatero" y A, B y C corresponden a la longitud de un trialgulo equilatero

	es cierto si R unifica con "isosceles" y A, B y C corresponden a la longitud de un trialgulo isosceles
	
	es cierto si R unifica con "escaleno" si A, B y C corresponden con la longitud de un triangulo escaleno
	
*/


triangulo(A, B, C):- A + B >= C,  A + C >= B, B + C >= A.


escaleno(A, B, C):- triangulo(A, B, C), A \= B, A \= C, B \= C.

equilatero(A, B, C):- triangulo(A, B, C), A == B, A == C, B == C.

isosceles(A, B, C):- triangulo(A, B, C), A == B, A \= C.
isosceles(A, B, C):- triangulo(A, B, C), A == C, A \= B.
isosceles(A, B, C):- triangulo(A, B, C), B == C, B \= A.

triangle(A, B, C, R):- escaleno(A, B, C), R == "escaleno".
triangle(A, B, C, R):- isosceles(A, B, C), R == "isosceles".
triangle(A, B, C, R):- equilatero(A, B, C), R == "equilatero".