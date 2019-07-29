from pyswip import Prolog, Query, Variable, Functor
from tkinter import *
from tkinter import scrolledtext

from tkinter.ttk import *
#Prolog instance created and opened file
prolog = Prolog()
prolog.consult("reglas_test.pl")


def create_window():
    window = Tk()
    window.title("El presupuesto del bibliófilo")
    window.geometry("1366x768")
    #Label 1
    lbl = Label(window, text="Seleccione accion.", font=("Arial Bold", 15))
    lbl.grid(column=1, row=0)
    #Tracer
    # v = StringVar()
    # v.trace('w', on_value_change)
    #Cbx
    combo = Combobox(window, state="readonly")
    combo['values'] = ("Select", "obtener_libros_menosde_siete_dias(Adicional,PorcientoSueldo,Dia,Mes,Anho,IdLibro)"
                       ,"obtener_cienciaficcion_historia(Adicional, PorcientoSueldo, Categoria,Estrellas,IdLibro)"
                       ,"obtener_usados_varias_categorias(Adicional,Porciento,IdLibro)")
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


def on_value_change(combo,window):
    print(combo.get())

    if(combo.get() == "obtener_libros_menosde_siete_dias(Adicional,PorcientoSueldo,Dia,Mes,Anho,IdLibro)"):
        label_adicional = Label(window, text="Sueldo Adicional", anchor='e', width=30)
        label_adicional.grid(column=0,row=3,pady=10 )
        adicional = Entry(window)
        adicional.grid(column=1,row=3)
        label_porciento_sueldo = Label(window, text="Porciento Sueldo", anchor='e', width=30)
        label_porciento_sueldo.grid(column=0, row=5,pady=10)
        porciento_sueldo = Entry(window)
        porciento_sueldo.grid(column=1, row=5)
        label_dia = Label(window, text="Dia", anchor='e', width=30)
        label_dia.grid(column=0, row=7,pady=10)
        dia = Entry(window)
        dia.grid(column=1, row=7)
        label_mes = Label(window, text="Mes", anchor='e', width=30)
        label_mes.grid(column=0, row=9,pady=10)
        mes = Entry(window)
        mes.grid(column=1, row=9)
        label_anho = Label(window, text="Año", anchor='e', width=30)
        label_anho.grid(column=0, row=11,pady=10)
        anho = Entry(window)
        anho.grid(column=1, row=11)
        label_id_libro = Label(window, text="Sueldo Adicional", anchor='e', width=30)
        label_id_libro.grid(column=0, row=13,pady=10)
        id_libro = Entry(window)
        id_libro.grid(column=1, row=13)

    if(combo.get() == "obtener_cienciaficcion_historia(Adicional, PorcientoSueldo, Categoria,Estrellas,IdLibro)"):
        for widget in window.grid_slaves():
            if( int(widget.grid_info()['row'] > 2)):
                widget.grid_forget()
def clicked(option, txt):
    if not option == 'Select':
        selected_option = list(prolog.query(option))
        txt.delete(1.0,END)
        print(selected_option)
        for result in selected_option:
            for key in result.keys():
                txt.insert(INSERT,(key + ' : ' + str(result[key]) + "\n"))
    else:
        txt.delete(1.0,END)


def assertar(text):
    prolog.assertz(text.get())
    text.delete(0, END)

def main():

    create_window()


if __name__ == '__main__' or __name__ == 'testpyswip':
    main()

