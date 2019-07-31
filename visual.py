from pyswip import Prolog, Query, Variable, Functor
from tkinter import *
from tkinter import scrolledtext
from tkinter import ttk

from tkinter.ttk import *
#Prolog instance created and opened file
prolog = Prolog()
prolog.consult("reglas_test.pl")





def create_window():
    window = Tk()
    window.title("El presupuesto del bibliófilo")
    window.geometry("720x480")

    tabControl = ttk.Notebook(window)



    #Label 1
    lbl = Label(window, text="El presupuesto del bibliófilo", font=("Arial Bold", 15))
    lbl.grid(column=0, row=0)

    #PRIMER TAB
    tab1 = ttk.Frame(tabControl)
    tabControl.add(tab1, text="Menos de 7 dias")
    tabContent1(tab1)

    #SEGUNDO TAB
    tab2 = ttk.Frame(tabControl)
    tabControl.add(tab2, text="Categoria estrellas")
    tabContent2(tab2)

    #TERCER TAB
    tab3 = ttk.Frame(tabControl)
    tabControl.add(tab3, text="Usado varias categorias")
    tabContent3(tab3)

    #CUARTO TAB
    tab4 = ttk.Frame(tabControl)
    tabControl.add(tab4, text="Autor no palabra")
    tabContent4(tab4)

    #QUINTO TAB
    tab5 = ttk.Frame(tabControl)
    tabControl.add(tab5, text="Estellas este mes")
    tabContent5(tab5)


    tab6 = ttk.Frame(tabControl)
    tabControl.add(tab6, text="Extra 1")

    tab7 = ttk.Frame(tabControl)
    tabControl.add(tab7, text="Extra 2")

    tab8 = ttk.Frame(tabControl)
    tabControl.add(tab8, text="Extra 3")

    tabControl.grid(column=0, row=3)

    # #Cbx
    # combo = Combobox(window, state="readonly")
    # combo['values'] = ("Select", "libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro)"
    #                    ,"categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro)"
    #                    ,"usados_varias_categorias(Adicional,IdLibro)"
    #                    ,"categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro)"
    #                    ,"categoria_estrellas_estemes(Categoria, Estrellas, Mes, Anho, IdLibro)")
    # combo.current(0)
    # combo.grid(column=1,row=2)
    # combo.bind('<<ComboboxSelected>>', lambda event: on_value_change(combo, window))

    window.mainloop()

def tabContent1(tab1):
    labelFrame = ttk.LabelFrame(tab1, text="Libros con menos de 7 dias")
    labelFrame.grid(column=0, row=5)

    label_adicional = Label(labelFrame, text="Sueldo Adicional", anchor='e', width=30)
    label_adicional.grid(column=0, row=3, pady=10)
    adicional = Entry(labelFrame)
    adicional.grid(column=1, row=3)

    label_dia = Label(labelFrame, text="Dia", anchor='e', width=30)
    label_dia.grid(column=0, row=5, pady=10)
    dia = Entry(labelFrame)
    dia.grid(column=1, row=5)

    label_mes = Label(labelFrame, text="Mes", anchor='e', width=30)
    label_mes.grid(column=0, row=7, pady=10)
    mes = Entry(labelFrame)
    mes.grid(column=1, row=7)

    label_anho = Label(labelFrame, text="Año", anchor='e', width=30)
    label_anho.grid(column=0, row=9, pady=10)
    anho = Entry(labelFrame)
    anho.grid(column=1, row=9)

    label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    label_id_libro.grid(column=0, row=11, pady=10)
    id_libro = Entry(labelFrame)
    id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar", command=lambda: clicked1st(adicional, dia, mes, anho, id_libro, labelFrame))
    btn.grid(column=1, row=13)


def tabContent2(tab2):
    labelFrame = ttk.LabelFrame(tab2, text="Libros de categorias con 4 o mas estrellas")
    labelFrame.grid(column=0, row=5)

    label_adicional = Label(labelFrame, text="Sueldo Adicional", anchor='e', width=30)
    label_adicional.grid(column=0, row=3, pady=10)
    adicional = Entry(labelFrame)
    adicional.grid(column=1, row=3)

    label_porciento_sueldo = Label(labelFrame, text="Porciento Sueldo", anchor='e', width=30)
    label_porciento_sueldo.grid(column=0, row=5, pady=10)
    porciento_sueldo = Entry(labelFrame)
    porciento_sueldo.grid(column=1, row=5)

    label_categoria = Label(labelFrame, text="Categoria", anchor='e', width=30)
    label_categoria.grid(column=0, row=7, pady=10)
    categoria = Entry(labelFrame)
    categoria.grid(column=1, row=7)

    label_estrellas = Label(labelFrame, text="Estrellas", anchor='e', width=30)
    label_estrellas.grid(column=0, row=9, pady=10)
    estrellas = Entry(labelFrame)
    estrellas.grid(column=1, row=9)

    label_id_libro = Label(labelFrame, text="Id_libro", anchor='e', width=30)
    label_id_libro.grid(column=0, row=11, pady=10)
    id_libro = Entry(labelFrame)
    id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked2nd(adicional, porciento_sueldo, categoria, estrellas, id_libro, labelFrame))
    btn.grid(column=1, row=13)

def tabContent3(tab3):
    labelFrame = ttk.LabelFrame(tab3, text="Libros usados de diferentes categorias")
    labelFrame.grid(column=0, row=5)

    label_adicional = Label(labelFrame, text="Sueldo Adicional", anchor='e', width=30)
    label_adicional.grid(column=0, row=3, pady=10)
    adicional = Entry(labelFrame)
    adicional.grid(column=1, row=3)

    label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    label_id_libro.grid(column=0, row=5, pady=10)
    id_libro = Entry(labelFrame)
    id_libro.grid(column=1, row=5)

def tabContent4(tab4):
    labelFrame = ttk.LabelFrame(tab4, text="Libros de economia sin palabra crisis")
    labelFrame.grid(column=0, row=5)

    label_porciento_sueldo = Label(labelFrame, text="Porciento Sueldo", anchor='e', width=30)
    label_porciento_sueldo.grid(column=0, row=3, pady=10)
    porciento_sueldo = Entry(labelFrame)
    porciento_sueldo.grid(column=1, row=3)

    # PRINT TITULO/NOMBRE AUTOR/PRECIO FOR THE LISTING OF BOOKS
    label_categoria = Label(labelFrame, text="Categoria", anchor='e', width=30)
    label_categoria.grid(column=0, row=5, pady=10)
    categoria = Entry(labelFrame)
    categoria.grid(column=1, row=5)

    label_autor = Label(labelFrame, text="Autor", anchor='e', width=30)
    label_autor.grid(column=0, row=7, pady=10)
    autor = Entry(labelFrame)
    autor.grid(column=1, row=7)

    label_palabra = Label(labelFrame, text="Palabra", anchor='e', width=30)
    label_palabra.grid(column=0, row=9, pady=10)
    palabra = Entry(labelFrame)
    palabra.grid(column=1, row=9)

    label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    label_id_libro.grid(column=0, row=11, pady=10)
    id_libro = Entry(labelFrame)
    id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked4th(porciento_sueldo, categoria, autor, palabra, id_libro, labelFrame))
    btn.grid(column=1, row=13)

def tabContent5(tab5):
    labelFrame = ttk.LabelFrame(tab5, text="Libros viajes 5 estrellas")
    labelFrame.grid(column=0, row=5)

    label_categoria = Label(labelFrame, text="Categoria", anchor='e', width=30)
    label_categoria.grid(column=0, row=3, pady=10)
    categoria = Entry(labelFrame)
    categoria.grid(column=1, row=3)

    label_estrellas = Label(labelFrame, text="Estrellas", anchor='e', width=30)
    label_estrellas.grid(column=0, row=5, pady=10)
    estrellas = Entry(labelFrame)
    estrellas.grid(column=1, row=5)

    label_mes = Label(labelFrame, text="Mes", anchor='e', width=30)
    label_mes.grid(column=0, row=7, pady=10)
    mes = Entry(labelFrame)
    mes.grid(column=1, row=7)

    label_anho = Label(labelFrame, text="Año", anchor='e', width=30)
    label_anho.grid(column=0, row=9, pady=10)
    anho = Entry(labelFrame)
    anho.grid(column=1, row=9)

    label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    label_id_libro.grid(column=0, row=11, pady=10)
    id_libro = Entry(labelFrame)
    id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked5th(categoria, estrellas, mes, anho, id_libro, labelFrame))
    btn.grid(column=1, row=13)


def get_book_info(id):
    name = ""
    author = ""
    category = ""
    img = ""
    day = ""
    month = ""
    year = ""
    info = list(prolog.query("informacion_libro(" + str(id) + ",Nombre,Autor,Categoria,Imagen,Dia,Mes,Anho)"))
    for result in info:
        for key in result.keys():
            if(key == 'Nombre'):
                name = result[key]
            elif(key == 'Autor'):
                author = result[key]
            elif (key == 'Categoria'):
                category = result[key]
            elif (key == 'Imagen'):
                img= result[key]
            elif (key == 'Dia'):
                day = result[key]
            elif (key == 'Mes'):
                month = result[key]
            elif (key == 'Anho'):
                year = result[key]

    print(name,author,category,img,day,month,year)

    # print(name)




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
        print(selected_option)

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


def clicked4th(porciento_sueldo, categoria, autor, palabra, id_libro, window):
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


def clicked5th(categoria, estrellas, mes, anho, id_libro, window):
    fact = "categoria_estrellas_estemes(" \
            + categoria.get() + \
            "," + estrellas.get() + \
            "," + mes.get() + \
            "," + anho.get() + \
            "," + id_libro.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))

    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)
    for result in selected_option:
        for key in result.keys():
            txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))


# def on_value_change(combo,window):
#     print(combo.get())
#
#
#     if(combo.get() == "libros_menosde_siete_dias(Adicional,Dia,Mes,Anho,IdLibro)"):
#         cleanWindow(window)
#         label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
#         label_adicional.grid(column=0,row=3,pady=10 )
#         adicional = Entry(window)
#         adicional.grid(column=1,row=3)
#
#         label_dia = Label(window, text="Dia", anchor='e', width=30)
#         label_dia.grid(column=0, row=5,pady=10)
#         dia = Entry(window)
#         dia.grid(column=1, row=5)
#
#         label_mes = Label(window, text="Mes", anchor='e', width=30)
#         label_mes.grid(column=0, row=7,pady=10)
#         mes = Entry(window)
#         mes.grid(column=1, row=7)
#
#         label_anho = Label(window, text="Año", anchor='e', width=30)
#         label_anho.grid(column=0, row=9,pady=10)
#         anho = Entry(window)
#         anho.grid(column=1, row=9)
#
#         label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
#         label_id_libro.grid(column=0, row=11,pady=10)
#         id_libro = Entry(window)
#         id_libro.grid(column=1, row=11)
#
#         btn = Button(window, text="Buscar", command= lambda: clicked1st(adicional,dia,mes,anho,id_libro, window))
#         btn.grid(column=1,row=13)
#
#     elif(combo.get() == "categoria_estrellas(Adicional, Porcentaje, Categoria, Estrellas, IdLibro)"):
#         cleanWindow(window)
#
#         label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
#         label_adicional.grid(column=0, row=3, pady=10)
#         adicional = Entry(window)
#         adicional.grid(column=1, row=3)
#
#         label_porciento_sueldo = Label(window, text="Porciento Sueldo", anchor='e', width=30)
#         label_porciento_sueldo.grid(column=0, row=5, pady=10)
#         porciento_sueldo = Entry(window)
#         porciento_sueldo.grid(column=1, row=5)
#
#         label_categoria = Label(window, text="Categoria", anchor='e', width=30)
#         label_categoria.grid(column=0, row=7, pady=10)
#         categoria = Entry(window)
#         categoria.grid(column=1, row=7)
#
#         label_estrellas = Label(window, text="Estrellas", anchor='e', width=30)
#         label_estrellas.grid(column=0, row=9, pady=10)
#         estrellas = Entry(window)
#         estrellas.grid(column=1, row=9)
#
#         label_id_libro = Label(window, text="Id_libro", anchor='e', width=30)
#         label_id_libro.grid(column=0, row=11, pady=10)
#         id_libro = Entry(window)
#         id_libro.grid(column=1, row=11)
#
#         btn = Button(window, text="Buscar", command=lambda: clicked2nd(adicional, porciento_sueldo, categoria, estrellas, id_libro, window))
#         btn.grid(column=1, row=13)
#     elif(combo.get() == "usados_varias_categorias(Adicional,IdLibro)"):
#         cleanWindow(window)
#
#         label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
#         label_adicional.grid(column=0, row=3, pady=10)
#         adicional = Entry(window)
#         adicional.grid(column=1, row=3)
#
#         label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
#         label_id_libro.grid(column=0, row=5, pady=10)
#         id_libro = Entry(window)
#         id_libro.grid(column=1, row=5)
#
#     elif(combo.get() == "categoria_autor_nopalabra(Porcentaje, Categoria, Autor, Palabra, IdLibro)"):
#         cleanWindow(window)
#
#         label_porciento_sueldo = Label(window, text="Porciento Sueldo", anchor='e', width=30)
#         label_porciento_sueldo.grid(column=0, row=3, pady=10)
#         porciento_sueldo = Entry(window)
#         porciento_sueldo.grid(column=1, row=3)
#
# # PRINT TITULO/NOMBRE AUTOR/PRECIO FOR THE LISTING OF BOOKS
#         label_categoria = Label(window, text="Categoria", anchor='e', width=30)
#         label_categoria.grid(column=0, row=5, pady=10)
#         categoria = Entry(window)
#         categoria.grid(column=1, row=5)
#
#         label_autor = Label(window, text="Autor", anchor='e', width=30)
#         label_autor.grid(column=0, row=7, pady=10)
#         autor = Entry(window)
#         autor.grid(column=1, row=7)
#
#         label_palabra = Label(window, text="Palabra", anchor='e', width=30)
#         label_palabra.grid(column=0, row=9, pady=10)
#         palabra = Entry(window)
#         palabra.grid(column=1, row=9)
#
#         label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
#         label_id_libro.grid(column=0, row=11, pady=10)
#         id_libro = Entry(window)
#         id_libro.grid(column=1, row=11)
#
#         btn = Button(window, text="Buscar",
#                      command=lambda: clicked4th(porciento_sueldo, categoria, autor, palabra, id_libro, window))
#         btn.grid(column=1, row=13)
#
#     elif (combo.get() == "categoria_estrellas_estemes(Categoria, Estrellas, Mes, Anho, IdLibro)"):
#         label_categoria = Label(window, text="Categoria", anchor='e', width=30)
#         label_categoria.grid(column=0, row=3, pady=10)
#         categoria = Entry(window)
#         categoria.grid(column=1, row=3)
#
#         label_estrellas = Label(window, text="Estrellas", anchor='e', width=30)
#         label_estrellas.grid(column=0, row=5, pady=10)
#         estrellas = Entry(window)
#         estrellas.grid(column=1, row=5)
#
#         label_mes = Label(window, text="Mes", anchor='e', width=30)
#         label_mes.grid(column=0, row=7, pady=10)
#         mes = Entry(window)
#         mes.grid(column=1, row=7)
#
#         label_anho = Label(window, text="Año", anchor='e', width=30)
#         label_anho.grid(column=0, row=9, pady=10)
#         anho = Entry(window)
#         anho.grid(column=1, row=9)
#
#         label_id_libro = Label(window, text="Id Libro", anchor='e', width=30)
#         label_id_libro.grid(column=0, row=11, pady=10)
#         id_libro = Entry(window)
#         id_libro.grid(column=1, row=11)
#
#         btn = Button(window, text="Buscar",
#                      command=lambda: clicked5th(categoria, estrellas, mes, anho, id_libro, window))
#         btn.grid(column=1, row=13)

def cleanWindow(window):
    for widget in window.grid_slaves():
        if (int(widget.grid_info()['row'] > 2)):
            widget.grid_forget()

def main():
    print("Initiated")
    create_window()
    get_book_info(1)

if __name__ == '__main__' or __name__ == 'testpyswip':
    main()

