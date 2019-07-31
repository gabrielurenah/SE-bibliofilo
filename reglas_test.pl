:-dynamic sueldo/1.
sueldo(60000).

cambiar_sueldo(X):-(abolish(sueldo/1),assert(sueldo(X))).

libro(1,'paint mojo - a mixed-media workshop: creative layering techniques for personal expression').
libro(2,'yeah! yeah! yeah!: the story of pop music from bill haley to beyonce').
libro(3,'the digital photography book, part 5: photo recipes').
libro(4,'mapping it out: an alternative atlas of contemporary cartographies').
libro(5,'the dirt: confessions of the world\'s most notorious rock band').
libro(6,'words for pictures: the art and business of writing comics and graphic novels').
libro(7,'the photographer\'s playbook: 307 assignments and ideas').
libro(8,'do not sell at any price: the wild, obsessive hunt for the world\'s rarest 78rpm records (english and english edition)').
libro(9,'hide and seek: the architecture of cabins and hideouts').
libro(10,'tiki pop: america imagines its own polynesian paradise').
libro(11,'el libro de edward').
libro(12,'el libro de edward con Crisis').
libro(13,'el libro del viajero 5 etrella').
libro(14,'el libro del viajero 4 etrella').

casa_editora(1,'casa editora 1').
casa_editora(2,'casa editora 2').
casa_editora(3,'casa editora 3').
casa_editora(4,'casa editora 4').
casa_editora(5,'casa editora 5').
casa_editora(6,'casa editora 1').
casa_editora(7,'casa editora 2').
casa_editora(8,'casa editora 3').
casa_editora(9,'casa editora 4').
casa_editora(10,'casa editora 5').
casa_editora(11,'casa editora 1').
casa_editora(12,'casa editora 1').
casa_editora(13,'casa editora 2').
casa_editora(14,'casa editora 2').


isbn(1,'1440333130').
isbn(2,'0393242692').
isbn(3,'0133856887').
isbn(4,'0500239185').
isbn(5,'b00jofs5bs').
isbn(6,'0770434355').
isbn(7,'159711247x').
isbn(8,'1451667051').
isbn(9,'3899555457').
isbn(10,'3836548518').
isbn(11,'111111').

autor(1,'tracy verdugo').
autor(2,'bob stanley').
autor(3,'kelby').
autor(4,'hans ulrich obrist').
autor(5,'tommy lee').
autor(6,'brian michael bendis').
autor(7,'jason fulford').
autor(8,'amanda petrusich').
autor(9,'sofia borges').
autor(10,'sven kirsten').
autor(11,'Edward Conen').
autor(12,'Edward Conen').

nuevo(1,831.969).
nuevo(2,810.5805).
nuevo(3,770.859).
nuevo(4,1366.6815).
nuevo(5,436.0635).
nuevo(6,832.842).
nuevo(7,744.2325).
nuevo(8,725.8995).
nuevo(9,2003.535).
nuevo(10,1773.936).
nuevo(11,50.00).
nuevo(12,1.00).

usado(1,755.145).
usado(2,783.081).
usado(4,1136.2095).
usado(6,657.369).
usado(7,663.0435).
usado(8,635.9805).
usado(10,1734.651).
usado(11,25.25).
usado(12,20.25).

ranking(1,5.0).
ranking(2,5.0).
ranking(3,0.0).
ranking(4,4.0).
ranking(5,4.7).
ranking(6,0.0).
ranking(7,4.1).
ranking(8,5.0).
ranking(9,0.0).
ranking(10,4.0).
ranking(11,5.0).
ranking(12,4.0).
ranking(13,5.0).
ranking(14,4.0).

material(1,'hardcover').
material(2,'paperback').
material(3,'paperback').
material(4,'hardcover').
material(5,'paperback').
material(6,'hardcover').
material(7,'paperback').
material(8,'hardcover').
material(9,'fisico').
material(10,'paperback').
material(11,'hardcover').
material(12,'hardcover').
material(13,'hardcover').

%% ID, Dia, Mes, Ano
fecha(1,18,7,2019).
fecha(2,14,7,2019).
fecha(3,7,8,2019).
fecha(4,30,6,2019).
fecha(5,30,6,2019).
fecha(6,22,7,2019).
fecha(7,30,6,2019).
fecha(8,8,7,2019).
fecha(9,25,8,2019).
fecha(10,1,8,2019).
fecha(11,1,8,2019).
fecha(12,1,5,2018).
fecha(13,31,7,2019).
fecha(14,21,7,2019).

categoria(1,'arts & photography').
categoria(2,'biographies & memoirs').
categoria(3,'business & money').
categoria(4,'Ciencia Ficcion').
categoria(5,'Historia').
categoria(6,'cookbooks, food & wine').
categoria(7,'arts & photography').
categoria(8,'Historia').
categoria(9,'arts & photography').
categoria(10,'health, fitness & dieting').
categoria(11,'Economia').
categoria(12,'Economia').
categoria(13,'Viaje').
categoria(14,'Viaje').

imagen(1,'http://ecx.images-amazon.com/images/I/61JWyro4ESL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(2,'http://ecx.images-amazon.com/images/I/41YJXTJ1IPL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(3,'http://ecx.images-amazon.com/images/I/51Kbgj%2BFPAL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(4,'http://ecx.images-amazon.com/images/I/51YZoxtXQEL._SL160_.jpg').
imagen(5,'http://ecx.images-amazon.com/images/I/51elsMrnPaL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(6,'http://ecx.images-amazon.com/images/I/61vCYRgkUaL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(7,'http://ecx.images-amazon.com/images/I/61szGnV%2B0tL._SL160_.jpg').
imagen(8,'http://ecx.images-amazon.com/images/I/518WevWL5AL._SL160_PIsitb-sticker-arrow-dp,TopRight,12,-18_SH30_OU01_.jpg').
imagen(9,'http://ecx.images-amazon.com/images/I/61wwUtpJeoL._SL160_.jpg').
imagen(10,'http://ecx.images-amazon.com/images/I/51ZRu3yfdiL._SL160_.jpg').


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

