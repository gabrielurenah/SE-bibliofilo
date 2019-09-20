:-dynamic sueldo/1.
sueldo(60000).

cambiar_sueldo(X):-(abolish(sueldo/1),assert(sueldo(X))).

guardar_sueldo:-tell('a_db.txt'), listing(sueldo), told.

autor(1,'J.K. Rowling').
autor(2,'Michelle Obama').
autor(3,'Melissa Hartwig').
autor(4,'Keith Houghton').
autor(5,'van der Zijl').
autor(6,'Vivian Barz').
autor(7,'Claire McGowan').
autor(8, 'Julianne MacLean').
autor(9, 'Kerry Lonsdale').
autor(10,'Brian K Vaughan').
autor(11,'Delia Owens').
autor(12,'Margaret Atwood ').
autor(13,'Marc Cameron').
autor(14,'Maddie Dawson').
autor(15,'Lisa Gray').

casa_editora(1,'Pottermore Publishing').
casa_editora(2,' Random House Large Print').
casa_editora(3,'Yellow Kite').
casa_editora(4,'Thomas & Mercer').
casa_editora(5,'Amazon Crossing').
casa_editora(6,'Thomas & Mercer').
casa_editora(7, 'Thomas & Mercer').
casa_editora(8, 'Lake Union Publishing').
casa_editora(9, 'Lake Union Publishing').
casa_editora(10,'Image Comics').
casa_editora(11,'Random House Large Print').
casa_editora(12,'Houghton Mifflin Harcourt').
casa_editora(13,'G.P. Putnams Sons').
casa_editora(14,'Lake Union Publishing').
casa_editora(15,'Thomas & Mercer').

categoria(1,'Fantasia').
categoria(2,'Biografia').
categoria(3,'Cocina').
categoria(4,'Suspenso').
categoria(5,'Biografia').
categoria(6,'Misterio').
categoria(7, 'Ficcion').
categoria(8, 'Ficcion').
categoria(9, 'Ficcion').
categoria(10,'Ficcion').
categoria(11,'Ficcion').
categoria(12,'Ficcion').
categoria(13,'Suspenso').
categoria(14,'Romance').
categoria(15,'Misterio').

% Fecha ID, dia, mes, año
fecha(1,8,12,2015).
fecha(2,18,11,2018).
fecha(3,1,1,2015).
fecha(4,19,4,2019).
fecha(5,1,8,2019).
fecha(6,30,7,2019).
fecha(7,30,7,2019).
fecha(8, 1,9,2019).
fecha(9,9,7,2019).
fecha(10,25,11,2014).
fecha(11,14,8,2018).
fecha(12,17,2,1986).
fecha(13,28,11,2017).
fecha(14,1,6,2019).
fecha(15,1,6,2019).

libro(1,'Harry Potter and the Sorcerers Stone').
libro(2,'Becoming').
libro(3,'The Whole 30: The Official 30-Day Guide to Total Health and Food Freedom').
libro(4,'Dont Even Breathe').
libro(5,'The Boy Between Worlds: A Biography ').
libro(6,'Forgotten Bones (Dead Remaining Book 1)').
libro(7,'What You Did').
libro(8, 'A Fire Sparkling').
libro(9, 'Last Summer: A Novel').
libro(10,'Saga Book One').
libro(11,'Where the Crawdads Sing').
libro(12,'The Handmaids Tale').
libro(13,'Tom Clancy Power and Empire').
libro(14,'Matchmaking for Beginners: A Novel').
libro(15,'Thin Air (Jessica Shaw Book 1)').

material(1,'Hardcover').
material(2,'Paperback').
material(3,'Paperback').
material(4,'Paperback').
material(5,'Paperback').
material(6,'Paperback').
material(7,'Hardcover').
material(8, 'Hardcover').
material(9, 'Paperback').
material(10,'Hardcover').
material(11,'Paperback').
material(12,'Hardcover').
material(13,'Paperback').
material(14,'Hardcover').
material(15,'Paperback').

nuevo(1,699.92).
nuevo(2,1197.99).
nuevo(3,1147.5).
nuevo(4,406.98).
nuevo(5,611.49).
nuevo(6,509.49).
nuevo(7,1250).
nuevo(8, 509.49).
nuevo(9, 560.49).
nuevo(10,1586.10).
nuevo(11,856.8).
nuevo(12,522.75).
nuevo(13,458.49).
nuevo(14,658.41).
nuevo(15,606.9).

ranking(1,4.7).
ranking(2,4.9).
ranking(3,4.6).
ranking(4,4.3).
ranking(5,4.7).
ranking(6,4.6).
ranking(7,4.8).
ranking(8, 4.7).
ranking(9, 4.7).
ranking(10,4.8).
ranking(11,4.8).
ranking(12,4.1).
ranking(13,4.1).
ranking(14,4.6).
ranking(15,4.3).

usado(1,100.0).
usado(2,983.79).
usado(3,678.81).
usado(4,498.27).
usado(7,510).
usado(9, 459).
usado(10,1219.41).
usado(11,805.29).
usado(12,374.34).
usado(13,50.0).
usado(14,313.14).
usado(15,346.29).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% R E G L A S     D E      A Y U D A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
obtener_presupuesto(Adicional,Total):- 
    sueldo(S),
    Total is Adicional+S.

obtener_presupuesto(Adicional,Porcentaje,Total):- 
    obtener_porciento(Porcentaje,Resultado),
    Total is Adicional+Resultado.

combinaciones([H|_], [H]).
combinaciones([_|T], C) :- combinaciones(T, C).
combinaciones([H|T], [H|C]) :- combinaciones(T, C).

suma([],0).
suma([[_,X]|Cola],Total):-suma(Cola,Temp),Total is Temp+X.

obtener_porciento(Porcentaje,Resultado):-sueldo(Sueldo),Resultado is Sueldo*Porcentaje.

obtener_combinaciones(Presupuesto,Lista,Combinaciones):-
    combinaciones(Lista,Combinaciones),
    suma(Combinaciones,Respuesta),
    Respuesta=<Presupuesto.

informacion_libro(Id, Precio, Nombre, Autor, Categoria, Dia, Mes, Anho,Flag) :-
    libro(Id, Nombre),
    autor(Id, Autor),
    categoria(Id, Categoria),
    fecha(Id, Dia, Mes, Anho),
    nuevo(Id,Precio),
    Flag is 1.

informacion_libro(Id, Precio, Nombre, Autor, Categoria, Dia, Mes, Anho,Flag) :-
    libro(Id, Nombre),
    autor(Id, Autor),
    categoria(Id, Categoria),
    fecha(Id, Dia, Mes, Anho),
    usado(Id,Precio),
    Flag is 0.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% P R I M E R A   R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
libros_menosde_siete_dias(Lista,Adicional,Dia,Mes,Anho):-
    obtener_presupuesto(Adicional,Presupuesto),
    findall([Id,Precio],busqueda_libros_semana_nuevos(Id,Precio,Dia,Mes,Anho,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

libros_menosde_siete_dias(Lista,Adicional,Dia,Mes,Anho):-
    obtener_presupuesto(Adicional,Presupuesto),
    findall([Id,Precio],busqueda_libros_semana_usados(Id,Precio,Dia,Mes,Anho,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).
%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA PRIMERA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busqueda_libros_semana_nuevos(Id,Precio,Dia,Mes,Anho,Presupuesto):-
    nuevo(Id,Precio),
    fecha(Id,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro=<Dia,DiaLibro>=Dia-7),
    Precio=<Presupuesto.

busqueda_libros_semana_usados(Id,Precio,Dia,Mes,Anho,Presupuesto):-
    usado(Id,Precio),
    fecha(Id,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro=<Dia,DiaLibro>=Dia-7),
    Precio=<Presupuesto.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% S E G U N D A   R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
categoria_estrellas(Lista,Adicional,Porcentaje,Categoria,Estrellas):-
    obtener_presupuesto(Adicional,Porcentaje,Presupuesto),
    findall([Id,Precio],busqueda_categoria_estrellas_nuevos(Id,Precio,Categoria,Estrellas,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

categoria_estrellas(Lista,Adicional,Porcentaje,Categoria,Estrellas):-
    obtener_presupuesto(Adicional,Porcentaje,Presupuesto),
    findall([Id,Precio],busqueda_categoria_estrellas_usados(Id,Precio,Categoria,Estrellas,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).
%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA SEGUNDA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busqueda_categoria_estrellas_nuevos(Id,Precio,Categoria,Estrellas,Presupuesto):-
    nuevo(Id,Precio),
    categoria(Id,Categoria),
    ranking(Id,E),
    E>=Estrellas,
    Precio=<Presupuesto.

busqueda_categoria_estrellas_usados(Id,Precio,Categoria,Estrellas,Presupuesto):-
    usado(Id,Precio),
    categoria(Id,Categoria),
    ranking(Id,E),
    E>=Estrellas,
    Precio=<Presupuesto.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% T E R C E R A  R E G L A
%Se toma el 50% de estos libros en Python, y de esa cantidad se extrae los que estén en más de una categoría.
usados_varias_categorias(Adicional,IdLibro):-
    libro(IdLibro,_),
    obtener_presupuesto(Adicional, Presupuesto),
    usado(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% C U A R T A   R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
categoria_autor_nopalabra(Lista,Porcentaje,Categoria,Autor,Palabra):-
    sueldo(S),
    Presupuesto is S*Porcentaje,
    findall([Id,Precio],busq_categ_autor_nopalabra_nuevos(Id,Precio,Categoria,Autor,Palabra,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

categoria_autor_nopalabra(Lista,Porcentaje,Categoria,Autor,Palabra):-
    sueldo(S),
    Presupuesto is S*Porcentaje,
    findall([Id,Precio],busq_categ_autor_nopalabra_usados(Id,Precio,Categoria,Autor,Palabra,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).
%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA CUARTA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busq_categ_autor_nopalabra_nuevos(Id,Precio,Categoria,Autor,Palabra,Presupuesto):-
    nuevo(Id,Precio),
    autor(Id,Autor),
    categoria(Id,Categoria),
    libro(Id,Titulo),
    atomic_list_concat(Lista,' ',Titulo),
    not(member(Palabra,Lista)),
    Precio=<Presupuesto.

busq_categ_autor_nopalabra_usados(Id,Precio,Categoria,Autor,Palabra,Presupuesto):-
    usado(Id,Precio),
    autor(Id,Autor),
    categoria(Id,Categoria),
    libro(Id,Titulo),
    atomic_list_concat(Lista,' ',Titulo),
    not(member(Palabra,Lista)),
    Precio=<Presupuesto.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Q U I N T A  R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
categoria_estrellas_estemes(Lista,Categoria,Estrellas,Mes,Anho):-
    sueldo(S),
    Presupuesto is S,
    findall([Id,Precio],busq_categ_estrellas_estemes_nuevos(Id,Precio,Categoria,Estrellas,Mes,Anho,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

categoria_estrellas_estemes(Lista,Categoria,Estrellas,Mes,Anho):-
    sueldo(S),
    Presupuesto is S,
    findall([Id,Precio],busq_categ_estrellas_estemes_usados(Id,Precio,Categoria,Estrellas,Mes,Anho,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).
%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA QUINTA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busq_categ_estrellas_estemes_nuevos(Id,Precio,Categoria,Estrellas,Mes,Anho,Presupuesto):-
    nuevo(Id,Precio),
    categoria(Id,Categoria),
    fecha(Id,_,MesLibro,AnhoLibro),
    MesLibro == Mes,AnhoLibro == Anho,
    ranking(Id,E),
    E =:= Estrellas,
    Precio=<Presupuesto.

busq_categ_estrellas_estemes_usados(Id,Precio,Categoria,Estrellas,Mes,Anho,Presupuesto):-
    usado(Id,Precio),
    categoria(Id,Categoria),
    fecha(Id,_,MesLibro,AnhoLibro),
    MesLibro == Mes,AnhoLibro == Anho,
    ranking(Id,E),
    E =:= Estrellas,
    Precio=<Presupuesto.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% S E X T A  R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
libros_periodo_tiempo(Lista,Autor,Estrellas,AnhoInicial,AnhoFinal):-
    sueldo(S),
    Presupuesto is S,
    findall([Id,Precio],busq_periodo_tiempo_nuevos(Id,Precio,Autor,Estrellas,AnhoInicial,AnhoFinal,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

libros_periodo_tiempo(Lista,Autor,Estrellas,AnhoInicial,AnhoFinal):-
    sueldo(S),
    Presupuesto is S,
    findall([Id,Precio],busq_periodo_tiempo_usados(Id,Precio,Autor,Estrellas,AnhoInicial,AnhoFinal,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).
%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA SEXTA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busq_periodo_tiempo_nuevos(Id,Precio,Autor,Estrellas,AnhoInicial,AnhoFinal,Presupuesto):-
    nuevo(Id,Precio),
    autor(Id,Autor),
    fecha(Id,_,_,AnhoLibro),
    AnhoInicial =< AnhoLibro, AnhoFinal >= AnhoLibro,
    ranking(Id,E),
    E >= Estrellas,
    Precio=<Presupuesto.

busq_periodo_tiempo_usados(Id,Precio,Autor,Estrellas,AnhoInicial,AnhoFinal,Presupuesto):-
    usado(Id,Precio),
    autor(Id,Autor),
    fecha(Id,_,_,AnhoLibro),
    AnhoInicial =< AnhoLibro, AnhoFinal >= AnhoLibro,
    ranking(Id,E),
    E >= Estrellas,
    Precio=<Presupuesto.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% S E P T I M A  R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
libros_casa_editora(Lista,CasaEditora,Estrellas,Porcentaje):-
    sueldo(S),
    Presupuesto is S*Porcentaje,
    findall([Id,Precio],busq_casa_editora(Id,Precio,CasaEditora,Estrellas,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA SEPTIMA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busq_casa_editora(Id,Precio,CasaEditora,Estrellas,Presupuesto):-
    nuevo(Id,Precio),
    casa_editora(Id,CasaEditora),
    ranking(Id,E),
    E >= Estrellas,
    Precio=<Presupuesto.
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% O C T A V A  R E G L A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
libros_categoria_material(Lista,Categoria,Material,Porcentaje):-
    sueldo(S),
    Presupuesto is S*Porcentaje,
    findall([Id,Precio],busq_categ_material(Id,Precio,Categoria,Material,Presupuesto),ListaAux),
    findall(Combinaciones,obtener_combinaciones(Presupuesto,ListaAux,Combinaciones),Lista).

%%%%%%%%%%%%%%%%%%%%%%%%%%%% REGLAS AYUDA DE LA OCTAVA REGLA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
busq_categ_material(Id,Precio,Categoria,Material,Presupuesto):-
    nuevo(Id,Precio),
    categoria(Id,Categoria),
    material(Id,Material),
    Precio=<Presupuesto. 

