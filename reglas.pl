
obtener_presupuesto(Porcentaje,Adicional,Total):- 
    obtener_porciento(Porcentaje,Resultado),
    Total is Adicional+Resultado.

obtener_porciento(Porcentaje,Resultado):-sueldo(Sueldo),Resultado is Sueldo*Porcentaje.

%%%%% P R I M E R A   R E G L A
obtener_libros_menosde_siete_dias(Adicional,PorcientoSueldo,Dia,Mes,Anho,IdLibro):-
    obtener_presupuesto(PorcientoSueldo, Adicional, Presupuesto),
    libro(IdLibro,_),
    fecha(IdLibro,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro<Dia),
    usado(IdLibro,Libro),
    Libro =< Presupuesto.

obtener_libros_menosde_siete_dias(Adicional,PorcientoSueldo,Dia,Mes,Anho,IdLibro):-
    obtener_presupuesto(PorcientoSueldo, Adicional, Presupuesto),
    libro(IdLibro,_),
    fecha(IdLibro,DiaLibro,MesLibro,AnhoLibro),
    (AnhoLibro==Anho,MesLibro==Mes,DiaLibro<Dia),
    not(usado(IdLibro,_)),
    nuevo(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%% S E G U N D A  R E G L A
obtener_cienciaficcion_historia(Adicional, PorcientoSueldo, Categoria,Estrellas,IdLibro):-
    obtener_presupuesto(PorcientoSueldo, Adicional, Presupuesto),
    categoria(IdLibro,Categoria),
    ranking(IdLibro,Estrellas),
    usado(IdLibro,Precio),
    Precio =< Presupuesto.

  obtener_cienciaficcion_historia(Adicional, PorcientoSueldo, Categoria,Estrellas,IdLibro):-
    obtener_presupuesto(PorcientoSueldo, Adicional, Presupuesto),
    categoria(IdLibro,Categoria),
    ranking(IdLibro,Estrellas),
    not(usado(IdLibro,_)),
    nuevo(IdLibro,Precio),
    Precio =< Presupuesto.

%%%%% T E R C E R A  R E G L A
%Se toma el 50% de estos libros en Python, y de esa cantidad se extrae los que estén en más de una categoría.
obtener_usados_varias_categorias(Adicional,Porciento,IdLibro):-
	libro(IdLibro,_),
	obtener_presupuesto(Porciento, Adicional, Presupuesto),
	usado(IdLibro,Precio),
  Precio =< Presupuesto.

%%%%% C U A R T A  R E G L A
cuarta(Adicional,Porciento,Autor,Categoria,Palabra,ID):-
	libro(ID,Libro),
	obtener_presupuesto(Porciento, Adicional, Presupuesto),
	usado(ID,Precio),
  Precio =< Presupuesto,
	autor(ID,Autor),
	categoria(ID,Categoria),
	atomic_list_concat(Lista,' ',Libro),
	not(member(Palabra,Lista)).

cuarta(Adicional,Porciento,Autor,Categoria,Palabra,ID):-
	libro(ID,Libro),
	obtener_presupuesto(Porciento, Adicional, Presupuesto),
	not(usado(ID,Precio)),
  nuevo(ID,Precio),
  Precio =< Presupuesto,
	autor(ID,Autor),
	categoria(ID,Categoria),
	atomic_list_concat(Lista,' ',Libro),
	not(member(Palabra,Lista)).


quinta(Categoria, Dia, Mes, Ano, Estrellas, 'menor','ambos', X):-categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E<Estrellas.
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'menor','nuevo', X):-nuevo(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E<Estrellas.
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'menor','usado', X):-usado(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E<Estrellas.
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'igual','ambos', X):-categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,Estrellas).
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'igual','nuevo', X):-nuevo(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,Estrellas).
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'igual','usado', X):-usado(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,Estrellas).
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'mayor','ambos', X):-categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E>Estrellas.
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'mayor','nuevo', X):-nuevo(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E>Estrellas.
quinta(Categoria, Dia, Mes, Ano, Estrellas, 'mayor','usado', X):-usado(X,_),categoria(X,Categoria),fecha(X,D,M,A),D =< Dia,M == Mes,A == Ano,ranking(X,E),E>Estrellas.

%Un libro de un tipo especifico que cueste entre tanto y tanto, donde tanto es diferente de this.tanto
sexta(PrecioMin,PrecioMax,'fisico',ID):-libro(ID,_),tipo(ID,'fisico'),(usado(ID,X);not(usado(ID,X)),nuevo(ID,X)),X >= PrecioMin,X =< PrecioMax.
sexta(PrecioMin,PrecioMax,'ebook',ID):-libro(ID,_),tipo(ID,'ebook'),(usado(ID,X);not(usado(ID,X)),nuevo(ID,X)),X >= PrecioMin,X =< PrecioMax.

%Libros de un ranking dado cuyo precio usado sea 80% menor que su precio nuevo
septima(Ranking,'menor',Porciento,ID):-libro(ID,_),ranking(ID,RL),RL<Ranking,nuevo(ID,Nuevo),usado(ID,Usado),Usado =< Nuevo*Porciento.
septima(Ranking,'igual',Porciento,ID):-libro(ID,_),ranking(ID,RL),RL==Ranking,nuevo(ID,Nuevo),usado(ID,Usado),Usado =< Nuevo*Porciento.
septima(Ranking,'mayor',Porciento,ID):-libro(ID,_),ranking(ID,RL),RL>Ranking,nuevo(ID,Nuevo),usado(ID,Usado),Usado =< Nuevo*Porciento.

%octava: Todos los libros exclusivos de Kindle con mas de 4 estrellas para la categoria de Ciencia Ficción
octava('fisico',Ranking,'menor',Categoria,ID):-libro(ID,_),tipo(ID,'fisico'),not(tipo(ID,'ebook')),ranking(ID,RL),RL<Ranking,categoria(ID,Categoria).
octava('fisico',Ranking,'mayor',Categoria,ID):-libro(ID,_),tipo(ID,'fisico'),not(tipo(ID,'ebook')),ranking(ID,RL),RL>Ranking,categoria(ID,Categoria).
octava('fisico',Ranking,'igual',Categoria,ID):-libro(ID,_),tipo(ID,'fisico'),not(tipo(ID,'ebook')),ranking(ID,RL),RL==Ranking,categoria(ID,Categoria).
octava('ebook',Ranking,'menor',Categoria,ID):-libro(ID,_),tipo(ID,'ebook'),not(tipo(ID,'fisico')),ranking(ID,RL),RL<Ranking,categoria(ID,Categoria).
octava('ebook',Ranking,'mayor',Categoria,ID):-libro(ID,_),tipo(ID,'ebook'),not(tipo(ID,'fisico')),ranking(ID,RL),RL>Ranking,categoria(ID,Categoria).
octava('ebook',Ranking,'igual',Categoria,ID):-libro(ID,_),tipo(ID,'ebook'),not(tipo(ID,'fisico')),ranking(ID,RL),RL==Ranking,categoria(ID,Categoria).

sueldo(50000).
