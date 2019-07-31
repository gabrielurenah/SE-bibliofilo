:-dynamic sueldo/1.
sueldo(60000).

cambiar_sueldo(X):-(abolish(sueldo/1),assert(sueldo(X))).

guardar_sueldo:-tell('a_db.txt'), listing(sueldo), told.

autor('0439708184','J.K. Rowling').
autor('0525633758','Michelle Obama').
autor('1473619556','Melissa Hartwig').
autor('1503900916','Keith Houghton').
autor('1542040094','van der Zijl').
autor('1542041643','Vivian Barz').
autor('1542091330','Claire McGowan').
autor('1542092809', 'Julianne MacLean').
autor('1542093082', 'Kerry Lonsdale').
autor('1632150786','Brian K Vaughan').
autor('1984827618','Delia Owens').
autor('B003JFJHTS','Margaret Atwood ').
autor('B06Y55SB4X','Marc Cameron').
autor('B076CJX3YN','Maddie Dawson').
autor('B07G8NTJVP','Lisa Gray').

casa_editora('0439708184','Pottermore Publishing').
casa_editora('0525633758',' Random House Large Print').
casa_editora('1473619556','Yellow Kite').
casa_editora('1503900916','Thomas & Mercer').
casa_editora('1542040094','Amazon Crossing').
casa_editora('1542041643','Thomas & Mercer').
casa_editora('1542091330', 'Thomas & Mercer').
casa_editora('1542092809', 'Lake Union Publishing').
casa_editora('1542093082', 'Lake Union Publishing').
casa_editora('1632150786','Image Comics').
casa_editora('1984827618','Random House Large Print').
casa_editora('B003JFJHTS','Houghton Mifflin Harcourt').
casa_editora('B06Y55SB4X','G.P. Putnams Sons').
casa_editora('B076CJX3YN','Lake Union Publishing').
casa_editora('B07G8NTJVP','Thomas & Mercer').

categoria('0439708184','Fantasia').
categoria('0525633758','Biografia').
categoria('1473619556','Cocina').
categoria('1503900916','Suspenso').
categoria('1542040094','Biografia').
categoria('1542041643','Misterio').
categoria('1542091330', 'Ficcion').
categoria('1542092809', 'Ficcion').
categoria('1542093082', 'Ficcion').
categoria('1632150786','Ficcion').
categoria('1984827618','Ficcion').
categoria('B003JFJHTS','Ficcion').
categoria('B06Y55SB4X','Suspenso').
categoria('B076CJX3YN','Romance').
categoria('B07G8NTJVP','Misterio').

% Fecha ID, dia, mes, año
fecha('0439708184',8,12,2015).
fecha('0525633758',18,11,2018).
fecha('1473619556',1,1,2015).
fecha('1503900916',19,4,2019).
fecha('1542040094',1,8,2019).
fecha('1542041643',1,9,2019).
fecha('1542091330',1,9,2019).
fecha('1542092809', 1,9,2019).
fecha('1542093082',9,7,2019).
fecha('1632150786',25,11,2014).
fecha('1984827618',14,8,2018).
fecha('B003JFJHTS',17,2,1986).
fecha('B06Y55SB4X',28,11,2017).
fecha('B076CJX3YN',1,6,2019).
fecha('B07G8NTJVP',1,6,2019).

libro('0439708184','Harry Potter and the Sorcerers Stone').
libro('0525633758','Becoming').
libro('1473619556','The Whole 30: The Official 30-Day Guide to Total Health and Food Freedom').
libro('1503900916','Dont Even Breathe').
libro('1542040094','The Boy Between Worlds: A Biography ').
libro('1542041643','Forgotten Bones (Dead Remaining Book 1)').
libro('1542091330','What You Did').
libro('1542092809', 'A Fire Sparkling').
libro('1542093082', 'Last Summer: A Novel').
libro('1632150786','Saga Book One').
libro('1984827618','Where the Crawdads Sing').
libro('B003JFJHTS','The Handmaids Tale').
libro('B06Y55SB4X','Tom Clancy Power and Empire').
libro('B076CJX3YN','Matchmaking for Beginners: A Novel').
libro('B07G8NTJVP','Thin Air (Jessica Shaw Book 1)').

material('0439708184','Hardcover').
material('0525633758','Paperback').
material('1473619556','Paperback').
material('1503900916','Paperback').
material('1542040094','Paperback').
material('1542041643','Paperback').
material('1542091330','Hardcover').
material('1542092809', 'Hardcover').
material('1542093082', 'Paperback').
material('1632150786','Hardcover').
material('1984827618','Paperback').
material('B003JFJHTS','Hardcover').
material('B06Y55SB4X',Paperback).
material('B076CJX3YN','Hardcover').
material('B07G8NTJVP','Paperback').

nuevo('0439708184',699.92).
nuevo('0525633758',1197.99).
nuevo('1473619556',1147.5).
nuevo('1503900916',406.98).
nuevo('1542040094',611.49).
nuevo('1542041643',509.49).
nuevo('1542091330',1250).
nuevo('1542092809', 509.49).
nuevo('1542093082', 560.49).
nuevo('1632150786',1586.10).
nuevo('1984827618',856.8).
nuevo('B003JFJHTS',522.75).
nuevo('B06Y55SB4X',458.49).
nuevo('B076CJX3YN',658.41).
nuevo('B07G8NTJVP',606.9).

ranking('0439708184',4.7).
ranking('0525633758',4.9).
ranking('1473619556',4.6).
ranking('1503900916',4.3).
ranking('1542040094',4,7).
ranking('1542041643',4.6).
ranking('1542091330',4.8).
ranking('1542092809', 4.7).
ranking('1542093082', 4.7).
ranking('1632150786',4.8).
ranking('1984827618',4.8).
ranking('B003JFJHTS',4.1).
ranking('B06Y55SB4X',4.1).
ranking('B076CJX3YN',4.6).
ranking('B07G8NTJVP',4.3).

usado('0439708184',100.0).
usado('0525633758',983.79).
usado('1473619556',678.81).
usado('1503900916',498.27).
usado('1542091330',510).
usado('1542093082', 459).
usado('1632150786',1219.41).
usado('1984827618',805.29).
usado('B003JFJHTS',374.34).
usado('B06Y55SB4X',50.0).
usado('B076CJX3YN',313.14).
usado('B07G8NTJVP',346.29).

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

informacion_libro(Id, Precio, Nombre, Autor, Categoria, Imagen, Dia, Mes, Anho,Flag) :-
    libro(Id, Nombre),
    autor(Id, Autor),
    categoria(Id, Categoria),
    imagen(Id, Imagen),
    fecha(Id, Dia, Mes, Anho),
    nuevo(Id,Precio),
    Flag is 1.

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

