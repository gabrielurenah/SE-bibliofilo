from pyswip import Prolog, Query, Variable, Functor
from tkinter import *
from tkinter import scrolledtext
from tkinter import ttk
from datetime import date
from tkinter.ttk import *
# Prolog instance created and opened file
prolog = Prolog()
prolog.consult("reglas_test.pl")
date = date.today()



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
    tabContent6(tab6)

    tab7 = ttk.Frame(tabControl)
    tabControl.add(tab7, text="Extra 2")
    tabContent7(tab7)

    tab8 = ttk.Frame(tabControl)
    tabControl.add(tab8, text="Extra 3")
    tabContent8(tab8)


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

    # label_dia = Label(labelFrame, text="Dia", anchor='e', width=30)
    # label_dia.grid(column=0, row=5, pady=10)
    # dia = Entry(labelFrame)
    # dia.grid(column=1, row=5)
    #
    # label_mes = Label(labelFrame, text="Mes", anchor='e', width=30)
    # label_mes.grid(column=0, row=7, pady=10)
    # mes = Entry(labelFrame)
    # mes.grid(column=1, row=7)
    #
    # label_anho = Label(labelFrame, text="Año", anchor='e', width=30)
    # label_anho.grid(column=0, row=9, pady=10)
    # anho = Entry(labelFrame)
    # anho.grid(column=1, row=9)
    #
    # label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    # label_id_libro.grid(column=0, row=11, pady=10)
    # id_libro = Entry(labelFrame)
    # id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar", command=lambda: clicked1st("Lista",adicional, date.day, date.month, date.year, labelFrame))
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

    # label_id_libro = Label(labelFrame, text="Id_libro", anchor='e', width=30)
    # label_id_libro.grid(column=0, row=11, pady=10)
    # id_libro = Entry(labelFrame)
    # id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked2nd("Lista",adicional, porciento_sueldo, categoria, estrellas, labelFrame))
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

    # label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    # label_id_libro.grid(column=0, row=11, pady=10)
    # id_libro = Entry(labelFrame)
    # id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked4th("Lista",porciento_sueldo, categoria, autor, palabra, labelFrame))
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

    # label_mes = Label(labelFrame, text="Mes", anchor='e', width=30)
    # label_mes.grid(column=0, row=7, pady=10)
    # mes = Entry(labelFrame)
    # mes.grid(column=1, row=7)
    #
    # label_anho = Label(labelFrame, text="Año", anchor='e', width=30)
    # label_anho.grid(column=0, row=9, pady=10)
    # anho = Entry(labelFrame)
    # anho.grid(column=1, row=9)
    #
    # label_id_libro = Label(labelFrame, text="Id Libro", anchor='e', width=30)
    # label_id_libro.grid(column=0, row=11, pady=10)
    # id_libro = Entry(labelFrame)
    # id_libro.grid(column=1, row=11)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked5th("Lista", categoria, estrellas, date.month, date.year, labelFrame))
    btn.grid(column=1, row=13)




def tabContent6(tab6):
    #libros_periodo_tiempo(Autor,Estrellas,AnhoInicial,AnhoFinal,IdLibro)
    labelFrame = ttk.LabelFrame(tab6, text="Libros por periodo de tiempo")
    labelFrame.grid(column=0, row=5)

    label_autor = Label(labelFrame, text="Autor", anchor='e', width=30)
    label_autor.grid(column=0, row=3, pady=10)
    autor = Entry(labelFrame)
    autor.grid(column=1, row=3)

    label_estrellas = Label(labelFrame, text="Estrellas", anchor='e', width=30)
    label_estrellas.grid(column=0, row=5, pady=10)
    estrellas = Entry(labelFrame)
    estrellas.grid(column=1, row=5)

    label_anhoI = Label(labelFrame, text="Año Inicial", anchor='e', width=30)
    label_anhoI.grid(column=0, row=7, pady=10)
    anhoI = Entry(labelFrame)
    anhoI.grid(column=1, row=7)

    label_anhoF = Label(labelFrame, text="Año Final", anchor='e', width=30)
    label_anhoF.grid(column=0, row=9, pady=10)
    anhoF = Entry(labelFrame)
    anhoF.grid(column=1, row=9)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked6th("Lista", autor, estrellas, anhoI, anhoF, labelFrame))
    btn.grid(column=1, row=13)


def tabContent7(tab7):
    #por_casa_editora(CasaEditora,IdLibro)
    labelFrame = ttk.LabelFrame(tab7, text="Libros por casa editora")
    labelFrame.grid(column=0, row=5)

    label_casaEditora = Label(labelFrame, text="Casa Editora", anchor='e', width=30)
    label_casaEditora.grid(column=0, row=3, pady=10)
    casaEditora = Entry(labelFrame)
    casaEditora.grid(column=1, row=3)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked7th("Lista", casaEditora, labelFrame))
    btn.grid(column=1, row=13)

def tabContent8(tab8):
    ##material_autor_categoria(Autor,Categoria,Material,IdLibro)
    labelFrame = ttk.LabelFrame(tab8, text="Libros por material")
    labelFrame.grid(column=0, row=5)

    label_autor = Label(labelFrame, text="Autor", anchor='e', width=30)
    label_autor.grid(column=0, row=5, pady=10)
    autor = Entry(labelFrame)
    autor.grid(column=1, row=5)

    label_categoria = Label(labelFrame, text="Categoria", anchor='e', width=30)
    label_categoria.grid(column=0, row=7, pady=10)
    categoria = Entry(labelFrame)
    categoria.grid(column=1, row=7)

    label_material = Label(labelFrame, text="Material", anchor='e', width=30)
    label_material.grid(column=0, row=9, pady=10)
    material = Entry(labelFrame)
    material.grid(column=1, row=9)

    btn = Button(labelFrame, text="Buscar",
                 command=lambda: clicked8th("Lista",autor,categoria,material, labelFrame))
    btn.grid(column=1, row=13)


def get_book_info(id, price, txt):
    name = ""
    author = ""
    category = ""
    img = ""
    day = ""
    month = ""
    year = ""
    state = ""
    info = list(prolog.query("informacion_libro(" + str(id) + ',' + str(price) + ",Nombre,Autor,Categoria,Imagen,Dia,Mes,Anho,Flag)"))
    for result in info:
        for key in result.keys():
            print("Libro",id,"Key ",key)
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
            if key == 'Flag':
                if result[key] == 1:
                    state = 'Nuevo'
                else:
                    state = 'Usado'

    txt.insert(INSERT, "\nLibro "+ str(id))
    txt.insert(INSERT, "\nNombre: "+ name)
    txt.insert(INSERT, "\nAutor: "+ author)
    txt.insert(INSERT, "\nEstado: "+ state)
    txt.insert(INSERT, "\nCategoria: "+ category)
    txt.insert(INSERT, "\nFecha: "+ str(day) + "-" + str(month) + "-" + str(year))
    txt.insert(INSERT, "\n")

    # print(name)




def clicked1st(lista, adicional, dia, mes, anho, window):
        fact = "libros_menosde_siete_dias("\
            + lista + "," + \
            adicional.get() + \
            "," + str(18) + \
            "," + str(mes) + \
            "," + str(anho) + \
            ")"

        print(fact)
        selected_option = list(prolog.query(fact))
        print(selected_option)

        txt = scrolledtext.ScrolledText(window, width=40, height=10)
        txt.grid(column=1, row=15)

        if selected_option:
            for result in selected_option:
                for item in result:
                    if 'Lista' in result:
                        for arrays in result['Lista']:
                            if len(arrays) == 1:
                                for array in arrays:
                                    get_book_info(array[0], array[1], txt)
                            else:
                                txt.insert(INSERT, "\nCombinacion de Libros Disponibles:")
                                for array in arrays:
                                    get_book_info(array[0], array[1], txt)
                                txt.insert(INSERT, "\n--------------------------------\n:")


                # for key in result.keys():
                    # get_book_info(result[key], txt)
        else:
            txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")

def clicked2nd(lista,adicional, porciento_sueldo, categoria, estrellas, window):
    fact = "categoria_estrellas(" \
            + lista + "," + \
             adicional.get() + \
            "," + porciento_sueldo.get() + \
            "," + categoria.get() + \
            "," + estrellas.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))

    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)

    if(selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key], txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")

def clicked4th(lista,porciento_sueldo, categoria, autor, palabra, window):
    fact = "categoria_autor_nopalabra(" \
            + lista +"," + \
             porciento_sueldo.get() + \
            "," + categoria.get() + \
            "," + autor.get() + \
            "," + palabra.get() + \
            ")"


    print(fact)
    selected_option = list(prolog.query(fact))


    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)
    if(selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key],txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")

def clicked5th(list,categoria, estrellas, mes, anho, window):
    fact = "categoria_estrellas_estemes(" \
            + list + "," + \
            categoria.get() + \
            "," + estrellas.get() + \
            "," + str(mes) + \
            "," + str(anho) + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))

    txt = scrolledtext.ScrolledText(window, width=40, height=10)
    txt.grid(column=1, row=15)
    if(selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key], txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")


def clicked6th(lista, autor, estrellas, anhoI, anhoF, labelFrame):
    fact = "libros_periodo_tiempo(" \
            + lista + "," + \
            autor.get() + \
            "," + estrellas.get() + \
            "," + anhoI.get() + \
            "," + anhoF.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))
    print(selected_option)

    txt = scrolledtext.ScrolledText(labelFrame, width=40, height=10)
    txt.grid(column=1, row=15)
    if (selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key], txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")


def clicked7th(lista,casaEditora, labelFrame):
    fact = "por_casa_editora(" \
           + lista + "," + \
           casaEditora.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))
    print(selected_option)

    txt = scrolledtext.ScrolledText(labelFrame, width=40, height=10)
    txt.grid(column=1, row=15)
    if (selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key], txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")

def clicked8th(lista, autor,categoria, material, labelFrame):

    fact = "material_autor_categoria(" \
            + lista + "," + \
             autor.get() + \
            "," + categoria.get() + \
            "," + material.get() + \
            ")"

    print(fact)
    selected_option = list(prolog.query(fact))
    print(selected_option)

    txt = scrolledtext.ScrolledText(labelFrame, width=40, height=10)
    txt.grid(column=1, row=15)
    if (selected_option):
        for result in selected_option:
            for key in result.keys():
                get_book_info(result[key], txt)
            # txt.insert(INSERT, (key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.insert(INSERT, "No hay libros disponibles para este requerimiento.")


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
