:- encoding(utf8).
%Ejercicio 4  (hechos.pl)
% Base de conocimientos: solo HECHOS.

% Personajes que sobreviven en la isla 
personaje(eric).
personaje(timmy).
personaje(kelvin).
personaje(virginia).

%Rol / descripción de cada uno 
rol(eric,     protagonista).
rol(kelvin,   aliado_capturado).
rol(virginia, superviviente).

% Edad 
edad(eric, 30).

% Características especiales 
no_habla(kelvin).
mutante(virginia).
puede_volverse_aliada(virginia).

% Objetos que porta Eric 
tiene(eric, hacha).
tiene(eric, encendedor).

% Lo que Kelvin puede hacer si se le ordena 
puede(kelvin, cargar_troncos).
puede(kelvin, construir).

% Zonas de la isla 
zona(superficie).
zona(cuevas).
zona(bunkeres).

% Enemigos y dónde aparecen
enemigo(canibales).
enemigo(mutantes).

aparece(canibales, superficie).
aparece(mutantes,  superficie).
aparece(mutantes,  cuevas).

%Los búnkeres no tienen enemigos, pero requieren llave 
requiere_llave(bunkeres).

% Nivel de peligro de las zonas 
peligro(cuevas, alto).
% La superficie cambia según la hora 
peligro_por_hora(superficie, dia,   medio).
peligro_por_hora(superficie, noche, alto).

%Lo que Eric necesita para sobrevivir 
necesita(eric, refugio).
necesita(eric, comida).
necesita(eric, agua).

% Recursos y dónde se encuentran 
material_en(troncos, superficie).
material_en(piedras, superficie).
