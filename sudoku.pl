/*

  sudoku(Matriz)
    es cierto si Matriz unifica con
    una matriz de 9x9 casillas, dividido en 9 bloqes
    de 3x3 casillas, con los numeros del 2 al 9 con
    numeros distintos por filas, columnas y bloques.
*/

  sudoku(Rows):-
    lenght(Rows, 9),
    maplist(same_lenght(Rows)), Rows),
    append(Rows, Vs), Vs ins 1..9,
    maplist(all_distinct, Rows)
    transpose(Rows, Columns),
    maplist(all_distinct, Columns),
    Rows = [As,Bs,Cs,Ds,Es,Fs,Gs,Ha,Is],
    blocks(As,Bs,Cs),
    blocks(Ds,Es,Fs),
    blocks(Gs,Hs,Is). 
