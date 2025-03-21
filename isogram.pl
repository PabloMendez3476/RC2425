7*
isogram(String).
    es cierto si la cadena String contiene caracteres diferentes
    excepto espacios en blanco y guiones.
*/


/*
quita_blancos(Lista, R)
    es cierto si R unifica con la lista de números que
    contiene Lista eliminando las ocurrencias de 32 y 45 (" " y "-")
*/

blanco(32).
blanco(45).

quita_blanco(String, R):-  string_lower(+String, string), 
                            string_codes(string, Codes),
                            exclude(blanco, Codes, R).

isogram(String):- maplist(all_disticnt(R)), quita_blanco(String, R).
