from pyswip import Prolog, Query, Variable, Functor
from tkinter import *
from tkinter import scrolledtext

from tkinter.ttk import *
# Prolog instance created and opened file
prolog = Prolog()
prolog.consult("reglas_test.pl")


def create_window():
    window = Tk()
    window.title("El presupuesto del bibliófilo")
    window.geometry("720x480")

    #Label 1
    lbl = Label(window, text="Seleccione accion.", font=("Arial Bold", 15))
    lbl.grid(column=1, row=0)
    #Tracer
    # v = StringVar()
    # v.trace('w', on_value_change)
    #Cbx
    combo = Combobox(window, state="readonly")
    combo['values'] = ("Select", "libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro)"
                       ,"categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro)"
                       ,"usados_varias_categorias(Adicional,IdLibro)"
                       ,"categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro)")
    combo.current(0)
    combo.grid(column=1,row=2)
    combo.bind('<<ComboboxSelected>>', lambda event: on_value_change(combo, window))
    # txt = scrolledtext.ScrolledText(window, width=40, height=10)
    # txt.grid(column=0, row=3)
    # btn = Button(window, text="seleccionar opcion", command= lambda: clicked(combo.get(), txt))
    # btn.grid(column=0,row=1)
    # txtEntry = Entry(window)
    # txtEntry.grid(column=0, row=4)
    # btnEntry = Button(window, text="Agregar asercion", command= lambda: assertar(txtEntry))
    # btnEntry.grid(column=0,row=5)
    window.mainloop()


def clicked1st(adicional, dia, mes, anho, id_libro, window):
        fact = "libros_menosde_siete_dias("\
            +adicional.get()+\
               ","+dia.get()+\
               ","+mes.get()+\
               ","+anho.get()+\
               ","+id_libro.get()+\
               ")"

        print(fact)
        selected_option = list(prolog.query(fact))

        txt = scrolledtext.ScrolledText(window, width=40, height=10)
        txt.grid(column=1, row=15)
        for result in selected_option:
            for key in result.keys():
                txt.insert(INSERT,(key + ' : ' + str(result[key]) + "\n"))


def clicked2nd(adicional, porciento_sueldo, categoria, estrellas, id_libro, window):
    fact = "categoria_estrellas(" \
           + adicional.get() + \
            "," + porciento_sueldo.get() + \
            "," + categoria.get() + \
            "," + estrellas.get() + \
            "," + id_libro.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))

    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)
    for result in selected_option:
        for key in result.keys():
            txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))


def clicked3rd(porciento_sueldo, categoria, autor, palabra, id_libro, window):
    fact = "categoria_autor_nopalabra(" \
            + porciento_sueldo.get() + \
            "," + categoria.get() + \
            "," + autor.get() + \
            "," + palabra.get() + \
            "," + id_libro.get() + \
            ")"


    print(fact)
    selected_option = list(prolog.query(fact))

    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)
    for result in selected_option:
        for key in result.keys():
            txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))


def on_value_change(combo,window):
    print(combo.get())


    if(combo.get() == "libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro)"):
        cleanWindow(window)
        label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
        label_adicional.grid(column=0,row=3,pady=10 )
        adicional = Entry(window)
        adicional.grid(column=1,row=3)

        label_dia = Label(window, text="Dia", anchor='e', width=30)
        label_dia.grid(column=0, row=5,pady=10)
        dia = Entry(window)
        dia.grid(column=1, row=5)

        label_mes = Label(window, text="Mes", anchor='e', width=30)
        label_mes.grid(column=0, row=7,pady=10)
        mes = Entry(window)
        mes.grid(column=1, row=7)

        label_anho = Label(window, text="Año", anchor='e', width=30)
        label_anho.grid(column=0, row=9,pady=10)
        anho = Entry(window)
        anho.grid(column=1, row=9)

        label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
        label_id_libro.grid(column=0, row=11,pady=10)
        id_libro = Entry(window)
        id_libro.grid(column=1, row=11)

        btn = Button(window, text="Buscar", command= lambda: clicked1st(adicional,dia,mes,anho,id_libro, window))
        btn.grid(column=1,row=13)

    if(combo.get() == "categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro)"):
        cleanWindow(window)

        label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
        label_adicional.grid(column=0, row=3, pady=10)
        adicional = Entry(window)
        adicional.grid(column=1, row=3)

        label_porciento_sueldo = Label(window, text="Porciento Sueldo", anchor='e', width=30)
        label_porciento_sueldo.grid(column=0, row=5, pady=10)
        porciento_sueldo = Entry(window)
        porciento_sueldo.grid(column=1, row=5)

        label_categoria = Label(window, text="Categoria", anchor='e', width=30)
        label_categoria.grid(column=0, row=7, pady=10)
        categoria = Entry(window)
        categoria.grid(column=1, row=7)

        label_estrellas = Label(window, text="Estrellas", anchor='e', width=30)
        label_estrellas.grid(column=0, row=9, pady=10)
        estrellas = Entry(window)
        estrellas.grid(column=1, row=9)

        label_id_libro = Label(window, text="Id_libro", anchor='e', width=30)
        label_id_libro.grid(column=0, row=11, pady=10)
        id_libro = Entry(window)
        id_libro.grid(column=1, row=11)

        btn = Button(window, text="Buscar", command=lambda: clicked2nd(adicional, porciento_sueldo, categoria, estrellas, id_libro, window))
        btn.grid(column=1, row=13)
    if(combo.get() == "usados_varias_categorias(Adicional,IdLibro)"):
        cleanWindow(window)

        label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
        label_adicional.grid(column=0, row=3, pady=10)
        adicional = Entry(window)
        adicional.grid(column=1, row=3)

        label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
        label_id_libro.grid(column=0, row=5, pady=10)
        id_libro = Entry(window)
        id_libro.grid(column=1, row=5)

    if(combo.get() == "categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro)"):
        cleanWindow(window)

        label_porciento_sueldo = Label(window, text="Porciento Sueldo", anchor='e', width=30)
        label_porciento_sueldo.grid(column=0, row=3, pady=10)
        porciento_sueldo = Entry(window)
        porciento_sueldo.grid(column=1, row=3)

#TITULO/NOMBRE AUTOR/PRECIO FOR THE LISTING OF BOOKS
        label_categoria = Label(window, text="Categoria", anchor='e', width=30)
        label_categoria.grid(column=0, row=5, pady=10)
        categoria = Entry(window)
        categoria.grid(column=1, row=5)

        label_autor = Label(window, text="Autor", anchor='e', width=30)
        label_autor.grid(column=0, row=7, pady=10)
        autor = Entry(window)
        autor.grid(column=1, row=7)

        label_palabra = Label(window, text="Palabra", anchor='e', width=30)
        label_palabra.grid(column=0, row=9, pady=10)
        palabra = Entry(window)
        palabra.grid(column=1, row=9)

        label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
        label_id_libro.grid(column=0, row=11, pady=10)
        id_libro = Entry(window)
        id_libro.grid(column=1, row=11)

        btn = Button(window, text="Buscar",
                     command=lambda: clicked3rd(porciento_sueldo, categoria, autor, palabra, id_libro, window))
        btn.grid(column=1, row=13)
def cleanWindow(window):
    for widget in window.grid_slaves():
        if (int(widget.grid_info()['row'] > 2)):
            widget.grid_forget()

def main():
    print("Initiated")
    create_window()


if __name__ == '__main__' or __name__ == 'testpyswip':
    main()

