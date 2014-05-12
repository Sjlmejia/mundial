%grupos del mundial 2014


grupo(a, cabeza(brasil), equipos(croacia, mexico, camerun)).
grupo(b, cabeza(espana), equipos(holanda, chile, australia)).
grupo(c, cabeza(colombia), equipos(grecia, costademarfil, japon)).
grupo(d, cabeza(uruguay), equipos(costarica, inglaterra, italia)).
grupo(e, cabeza(suiza), equipos(ecuador, francia, honduras)).
grupo(f, cabeza(argentina), equipos(bosnia, iran, nigeria)).
grupo(g, cabeza(alemania), equipos(portugal, ghana, usa)).
grupo(h, cabeza(belgica), equipos(argelia, rusia, coreadelsur)).

partido(a, '12-06', '17h00', brasil, croacia, saopaulo).
partido(a, '13-06', '13h00', mexico, camerun, natal).
partido(b, '13-06', '16h00', espana, holanda, salvador).
partido(b, '13-06', '18h00', chile, australia, cuiaba).

partido(c, '14-06', '13h00', colombia, grecia, belohorizonte).
partido(d, '14-06', '16h00', uruguay, costarica, fortaleza).
partido(d, '14-06', '18h00', inglaterra, italia, manaos).
partido(d, '14-06', '22h00', costademarfil, japon, recife).

partido(e, '15-06', '13h00', suiza, ecuador, brasilia).
partido(e, '15-06', '16h00', francia, honduras, portoalegre).
partido(f, '15-06', '19h00', argentina, bosnia, riodejaneiro).

partido(g, '16-06', '13h00', alemania, portugal, salvador).
partido(f, '16-06', '16h00', iran, nigeria, curitiba).
partido(g, '16-06', '19h00', ghana, usa, natal).

partido(h, '17-06', '13h00', belgica, argelia, belohorizonte).
partido(a, '17-06', '16h00', brasil, mexico, fortaleza).
partido(h, '17-06', '18h00', rusia, coreadelsur, cuiaba).

partido(b, '18-06', '13h00', australia, holanda, portoalegre).
partido(b, '18-06', '16h00', espana, chile, riodejaneiro).
partido(a, '18-06', '18h00', camerun, croacia, manaos).

partido(c, '19-06', '13h00', colombia, costademarfil, brasilia).
partido(d, '19-06', '16h00', uruguay, inglaterra, saopaulo).
partido(c, '19-06', '19h00', japon, grecia, natal).

partido(d, '20-06', '13h00', italia, costarica, recife).
partido(e, '20-06', '16h00', suiza, francia, salvador).
partido(e, '20-06', '19h00', honduras, ecuador, curitiba).

partido(f, '21-06', '13h00', argentina, iran, belohorizonte).
partido(g, '21-06', '16h00',alemania, ghana, fortaleza).
partido(f, '21-06', '18h00', nigeria, bosnia, cuiaba).

partido(h, '22-06', '13h00', belgica, rusia, riodejaneiro).
partido(h, '22-06', '16h00', coreadelsur, argelia, portoalegre).
partido(g, '22-06', '18h00', usa, portugal, manaos).

partido(b, '23-06', '13h00', holanda, chile, saopaulo).
partido(b, '23-06', '13h00', australia, espana, curitiba).
partido(a, '23-06', '17h00', camerun, brasil, brasilia).
partido(a, '23-06', '17h00', croacia, mexico, recife).

partido(d, '24-06', '13h00', italia, uruguay, natal).
partido(d, '24-06', '13h00', costarica, inglaterra, belohorizonte).
partido(c, '24-06', '17h00', japon, colombia, cuiaba).
partido(c, '24-06', '17h00', grecia, costademarfil, fortaleza).

partido(f, '25-06', '13h00', nigeria, argentina, portoalegre).
partido(f, '25-06', '13h00', bosnia, iran, salvador).
partido(e, '25-06', '17h00', honduras, suiza, manaos).
partido(e, '25-06', '17h00', ecuador, francia, riodejaneiro).

partido(g, '26-06', '13h00', portugal, ghana, brasilia).
partido(g, '26-06', '13h00', usa, alemania, recife).
partido(h, '26-06', '17h00', coreadelsur, belgica, saopaulo).
partido(h, '26-06', '17h00', argelia, rusia, curitiba).

team(ecuador,grupo(e),tecnico('Reinaldo_Rueda'),figura('Antonio Valencia')).
jugador(ecuador,nombre('Luis Antonio'),apellido('Valencia'),posicion('volante'),numero(7)).

bjugador_equipo(Equipo):-
	jugador(Equipo,nombre(Nombre),apellido(Apellido),posicion(Posicion),numero(Numero)),
	saludo,
	write('Equipo'),write(Equipo),nl,
	write('Nombre'),write(Nombre),nl,
	write('Apellido'),write(Apellido),nl,
	write('Posicion'),write(Posicion),nl,
	write('Numero'),write(Numero),nl.
	
bjugador_Apellido(Apellido):-
	jugador(Equipo,nombre(Nombre),apellido(Apellido),posicion(Posicion),numero(Numero)),
	saludo,
	write('Equipo'),write(Equipo),nl,
	write('Nombre'),write(Nombre),nl,
	write('Apellido'),write(Apellido),nl,
	write('Posicion'),write(Posicion),nl,
	write('Numero'),write(Numero),nl.
	
bjugador_nombre(Nombre):-
	jugador(Equipo,nombre(Nombre),apellido(Apellido),posicion(Posicion),numero(Numero)),
	saludo,
	write('Equipo'),write(Equipo),nl,
	write('Nombre'),write(Nombre),nl,
	write('Apellido'),write(Apellido),nl,
	write('Posicion'),write(Posicion),nl,
	write('Numero'),write(Numero),nl.	
	
bjugador_posicion(Equipo,Posicion):-
	jugador(Equipo,nombre(Nombre),apellido(Apellido),posicion(Posicion),numero(Numero)),
	saludo,
	write('Equipo'),write(Equipo),nl,
	write('Nombre'),write(Nombre),nl,
	write('Apellido'),write(Apellido),nl,
	write('Posicion'),write(Posicion),nl,
	write('Numero'),write(Numero),nl.
	
es_cabeza(Grupo, Cabeza) :-
   grupo(Grupo, cabeza(Cabeza), equipos(_, _, _)).  



es_parte_mundial(Pais, Grupo) :-
   grupo(Grupo, cabeza(Pais), equipos(_,_,_)).
es_parte_mundial(Pais, Grupo) :-
   grupo(Grupo, cabeza(_), equipos(Pais,_,_)).
es_parte_mundial(Pais, Grupo) :-
   grupo(Grupo, cabeza(_), equipos(_, Pais,_)).
es_parte_mundial(Pais, Grupo) :-
   grupo(Grupo, cabeza(_), equipos(_,_,Pais)).


buscar_fecha(Fecha):-
    partido(Grupo, Fecha, Hora, Equipo1, Equipo2, Sede),
    saludo,
    write('Grupo: '), write(Grupo), nl,
    write('Hora: '), write(Hora), nl,
    write('Equipo 1: '), write(Equipo1), nl,
    write('Equipo 2: '), write(Equipo2), nl,    
    write('Sede: '), write(Sede), nl.

saludo :-
  write('Experto FIFA World Cup 2014'), nl,
  write('UNL'), nl.

buscar_grupo(Grupo):-
    partido(Grupo, Fecha, Hora, Equipo1, Equipo2, Sede),
    saludo,
    write('Grupo: '), write(Grupo), nl,
    write('Fecha: '), write(Fecha), nl,
    write('Hora: '), write(Hora), nl,
    write('Equipo 1: '), write(Equipo1), nl,
    write('Equipo 2: '), write(Equipo2), nl,    
    write('Sede: '), write(Sede), nl.

bsede(Sede):-
    partido(Grupo, Fecha, Hora, Equipo1, Equipo2, Sede),
    saludo,
    write('Grupo: '), write(Grupo), nl,
    write('Fecha: '), write(Fecha), nl,
    write('Hora: '), write(Hora), nl,
    write('Equipo 1: '), write(Equipo1), nl,
    write('Equipo 2: '), write(Equipo2), nl,    
    write('Sede: '), write(Sede), nl.

buscar_equipo(BEquipo):-
    partido(Grupo, Fecha, Hora, BEquipo, Equipo2, Sede),
    saludo,
    write('Grupo: '), write(Grupo), nl,
    write('Fecha: '), write(Fecha), nl,
    write('Hora: '), write(Hora), nl,
    write('Equipo 1: '), write(BEquipo), nl,
    write('Equipo 2: '), write(Equipo2), nl,    
    write('Sede: '), write(Sede), nl.

buscar_equipo(BEquipo):-
    partido(Grupo, Fecha, Hora, Equipo1, BEquipo, Sede),
    saludo,
    write('Grupo: '), write(Grupo), nl,
    write('Fecha: '), write(Fecha), nl,
    write('Hora: '), write(Hora), nl,
    write('Equipo 1: '), write(Equipo1), nl,
    write('Equipo 2: '), write(BEquipo), nl,    
    write('Sede: '), write(Sede), nl.
