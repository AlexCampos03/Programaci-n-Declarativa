:- encoding(utf8).
%Ejercicio 4  (reglas.pl)
% Carga la base de hechos y define las REGLAS.

:- consult('hechos.pl').   % carga automáticamente los hechos

% 1) Un personaje es POSIBLE ALIADO si ya es aliado (capturado) o
%    si puede volverse aliada. (uso del ";" como O-lógico)
posible_aliado(P) :-
    rol(P, aliado_capturado) ; puede_volverse_aliada(P).

% 2) Una zona TIENE ENEMIGOS si algún enemigo aparece en ella.
zona_con_enemigos(Z) :-
    aparece(_, Z).

% 3) Una zona es SEGURA si es una zona y NO aparece ningún enemigo
%    en ella. (uso de \+ = negación: "no se puede probar que...")
zona_segura(Z) :-
    zona(Z),
    \+ aparece(_, Z).

% 4) Una zona es ACCESIBLE_SIN_LLAVE si es zona y no requiere llave.
accesible_sin_llave(Z) :-
    zona(Z),
    \+ requiere_llave(Z).

% 5) Un personaje es ADULTO si su edad es 18 o más.
%    (uso de comparación numérica >=)
adulto(P) :-
    edad(P, E),
    E >= 18.

% ------------------------------------------------------------
% Cómo probar (cargar con:  ?- consult('reglas.pl').  o  [reglas]. )
%   ?- posible_aliado(kelvin).        -> true
%   ?- posible_aliado(virginia).      -> true
%   ?- zona_con_enemigos(superficie). -> true
%   ?- zona_segura(bunkeres).         -> true
%   ?- accesible_sin_llave(Z).        -> Z = superficie ; cuevas
%   ?- adulto(eric).                  -> true
% ------------------------------------------------------------
