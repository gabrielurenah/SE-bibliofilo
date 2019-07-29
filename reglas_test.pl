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
ranking(5,3.7).
ranking(6,0.0).
ranking(7,4.1).
ranking(8,5.0).
ranking(9,0.0).
ranking(10,4.0).
ranking(11,5.0).
ranking(13,5.0).
ranking(14,4.0).

tipo(1,'fisico').
tipo(2,'fisico').
tipo(3,'fisico').
tipo(4,'fisico').
tipo(5,'ebook').
tipo(6,'fisico').
tipo(7,'fisico').
tipo(8,'fisico').
tipo(9,'fisico').
tipo(10,'fisico').

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



obtener_presupuesto(Adicional,Total):- 
    sueldo(S),
    Total is Adicional+S.

obtener_presupuesto(Adicional,Porcentaje,Total):- 
    obtener_porciento(Porcentaje,Resultado),
    Total is Adicional+Resultado.

obtener_porciento(Porcentaje,Resultado):-sueldo(Sueldo),Resultado is Sueldo*Porcentaje.

%%%%% P R I M E R A   R E G L A
libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro):-
    obtener_presupuesto(Adicional, Presupuesto),
    libro(IdLibro,_),
    fecha(IdLibro,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro=<Dia,DiaLibro>=Dia-7),
    usado(IdLibro,Precio),
    Precio =< Presupuesto.

libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro):-
    obtener_presupuesto(Adicional, Presupuesto),
    libro(IdLibro,_),
    fecha(IdLibro,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro<Dia),
    not(usado(IdLibro,_)),
    nuevo(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%% S E G U N D A  R E G L A
categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro):-
    obtener_presupuesto(Adicional, Porcentaje, Presupuesto),
    categoria(IdLibro,Categoria),
    ranking(IdLibro,E),
    E>=Estrellas,
    usado(IdLibro,Precio),
    Precio =< Presupuesto.

categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro):-
    obtener_presupuesto(Adicional, Porcentaje, Presupuesto),
    categoria(IdLibro,Categoria),
    ranking(IdLibro,E),
    E>=Estrellas,
    not(usado(IdLibro,_)),
    nuevo(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%% T E R C E R A  R E G L A
%Se toma el 50% de estos libros en Python, y de esa cantidad se extrae los que estén en más de una categoría.
usados_varias_categorias(Adicional,IdLibro):-
    libro(IdLibro,_),
    obtener_presupuesto(Adicional, Presupuesto),
    usado(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%% C U A R T A  R E G L A
categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro):-
    libro(IdLibro,Libro),
    sueldo(S),
    Presupuesto is S*Porcentaje,
    usado(IdLibro,Precio),
    Precio =< Presupuesto,
    autor(IdLibro,Autor),
    categoria(IdLibro,Categoria),
    atomic_list_concat(Lista,' ',Libro),
    not(member(Palabra,Lista)).

categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro):-
    libro(IdLibro,Libro),
    sueldo(S),
    Presupuesto is S*Porcentaje,
    not(usado(IdLibro,_)),
    nuevo(IdLibro,Precio),
    Precio =< Presupuesto,
    autor(IdLibro,Autor),
    categoria(IdLibro,Categoria),
    atomic_list_concat(Lista,' ',Libro),
    not(member(Palabra,Lista)).

%%%%% Q U I N T A  R E G L A 
categoria_estrellas_estemes(Categoria, Estrellas, Mes, Anho, IdLibro):-
    libro(IdLibro,_),
    categoria(IdLibro,Categoria),
    fecha(IdLibro,_,MesLibro,AnhoLibro),
    MesLibro == Mes,AnhoLibro == Anho,
    ranking(IdLibro,E),
    E =:= Estrellas.
