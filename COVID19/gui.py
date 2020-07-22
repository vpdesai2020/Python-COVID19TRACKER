#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#Author: Vasanth Desai

import sys
import PIL 
from covid import Covid
covid=Covid()
from tkinter import *
from tkinter import Tk, ttk
import tkinter as tk
try:
    import Tkinter as tk
except ImportError:
    import tkinter as tk

try:
    import ttk
    py3 = False
except ImportError:
    import tkinter.ttk as ttk
    py3 = True

import gui_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = tk.Tk()
    gui_support.set_Tk_var()
    top = Toplevel1 (root)
    gui_support.init(root, top)
    root.mainloop()

w = None
def create_Toplevel1(rt, *args, **kwargs):
    '''Starting point when module is imported by another module.
       Correct form of call: 'create_Toplevel1(root, *args, **kwargs)' .'''
    global w, w_win, root
    #rt = root
    root = rt
    w = tk.Toplevel (root)
    gui_support.set_Tk_var()
    top = Toplevel1 (w)
    gui_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_Toplevel1():
    global w
    w.destroy()
    w = None

class Toplevel1:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85'
        _ana2color = '#ececec' # Closest X11 color: 'gray92'
        font10 = "-family {Segoe UI} -size 12"
        font9 = "-family {Segoe UI} -size 16 -weight bold"
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("494x401+449+170")
        top.minsize(120, 1)
        top.maxsize(1370, 749)
        top.resizable(1, 1)
        top.title("COVID19 Tracker")
        top.configure(background="#d9d9d9")

        self.heading = tk.Label(top)
        self.heading.place(relx=0.271, rely=0.087, height=19, width=207)
        self.heading.configure(background="#d9d9d9")
        self.heading.configure(disabledforeground="#a3a3a3")
        self.heading.configure(font=font9)
        self.heading.configure(foreground="#000000")
        self.heading.configure(text='''COVID 19 TRACKER''')

        self.country = tk.Label(top)
        self.country.place(relx=0.100, rely=0.2, height=19, width=76)
        self.country.configure(background="#d9d9d9")
        self.country.configure(disabledforeground="#a3a3a3")
        self.country.configure(font=font10)
        self.country.configure(foreground="#000000")
        self.country.configure(text='''COUNTRY''')
        
        
        self.TComboboxVar = StringVar()
        self.TCombobox1 = ttk.Combobox(top,textvariable=self.TComboboxVar)
        self.TCombobox1['values'] = covid.list_countries()
        self.TCombobox1.current(1)
        self.TCombobox1.place(relx=0.280, rely=0.2)
        self.TCombobox1.config(width=30)
        

        self.go = tk.Button(top,command=self.onConfirm)
        self.go.place(relx=0.713, rely=0.190, height=28, width=88)
        self.go.configure(activebackground="#ececec")
        self.go.configure(activeforeground="#000000")
        self.go.configure(background="#87ceeb")
        self.go.configure(disabledforeground="#a3a3a3")
        self.go.configure(font=font10)
        self.go.configure(foreground="#000000")
        self.go.configure(highlightbackground="#d9d9d9")
        self.go.configure(highlightcolor="black")
        self.go.configure(pady="0")
        self.go.configure(text='''GO''')

        self.Confirmed = tk.Button(top)
        self.Confirmed.place(relx=0.02, rely=0.414, height=95, width=114)
        self.Confirmed.configure(activebackground="#c48989")
        self.Confirmed.configure(activeforeground="#c48989")
        self.Confirmed.configure(background="#fdc2ba")
        self.Confirmed.configure(disabledforeground="#a3a3a3")
        self.Confirmed.configure(font=font10)
        self.Confirmed.configure(foreground="#000000")
        self.Confirmed.configure(highlightbackground="#c48989")
        self.Confirmed.configure(highlightcolor="black")
        self.Confirmed.configure(pady="0")
        self.Confirmed.configure(text='''Confirmed''')
        self.Confirmed.config(relief=GROOVE)

        self.Active = tk.Button(top)
        self.Active.place(relx=0.265, rely=0.414, height=95, width=114)
        self.Active.configure(activebackground="#ececec")
        self.Active.configure(activeforeground="#000000")
        self.Active.configure(background="#c8f1f6")
        self.Active.configure(disabledforeground="#a3a3a3")
        self.Active.configure(font=font10)
        self.Active.configure(foreground="#000000")
        self.Active.configure(highlightbackground="#d9d9d9")
        self.Active.configure(highlightcolor="black")
        self.Active.configure(pady="0")
        self.Active.configure(text='''Active''')
        self.Active.config(relief=GROOVE)

        self.Recovery = tk.Button(top)
        self.Recovery.place(relx=0.508, rely=0.414, height=95, width=114)
        self.Recovery.configure(activebackground="#ececec")
        self.Recovery.configure(activeforeground="#000000")
        self.Recovery.configure(background="#d4e3a7")
        self.Recovery.configure(disabledforeground="#a3a3a3")
        self.Recovery.configure(font=font10)
        self.Recovery.configure(foreground="#000000")
        self.Recovery.configure(highlightbackground="#d9d9d9")
        self.Recovery.configure(highlightcolor="black")
        self.Recovery.configure(pady="0")
        self.Recovery.configure(text='''Recoverd''')
        self.Recovery.config(relief=GROOVE)

        self.Death = tk.Button(top)
        self.Death.place(relx=0.753, rely=0.414, height=95, width=114)
        self.Death.configure(activebackground="#ececec")
        self.Death.configure(activeforeground="#000000")
        self.Death.configure(background="#d6d4cf")
        self.Death.configure(disabledforeground="#a3a3a3")
        self.Death.configure(font=font10)
        self.Death.configure(foreground="#000000")
        self.Death.configure(highlightbackground="#d9d9d9")
        self.Death.configure(highlightcolor="black")
        self.Death.configure(pady="0")
        self.Death.configure(text='''Death''')
        self.Death.config(relief=GROOVE)

        self.refresh = tk.Button(top,command=self.onConfirm)
        self.refresh.place(relx=0.423, rely=0.738, height=34, width=88)
        self.refresh.configure(activebackground="#ececec")
        self.refresh.configure(activeforeground="#000000")
        self.refresh.configure(background="#87ceeb")
        self.refresh.configure(disabledforeground="#a3a3a3")
        self.refresh.configure(font=font10)
        self.refresh.configure(foreground="#000000")
        self.refresh.configure(highlightbackground="#d9d9d9")
        self.refresh.configure(highlightcolor="black")
        self.refresh.configure(pady="0")
        self.refresh.configure(text='''REFRESH''')

        self.stay = tk.Label(top)
        self.stay.place(relx=0.326, rely=0.304, height=19, width=185)
        self.stay.configure(background="#d9d9d9")
        self.stay.configure(disabledforeground="#a3a3a3")
        self.stay.configure(font=font10)
        self.stay.configure(foreground="#000000")
        self.stay.configure(text='''STAY HOME! STAY SAFE!''')

    def onConfirm(self):
        integers=re.findall(r'\d+',self.TCombobox1.get())
        strings = [str(integer) for integer in integers]
        a_string = "".join(strings)
        an_integer = int(a_string)  
        italy_cases = covid.get_status_by_country_id(an_integer)
        country=list(italy_cases.values())[1]
        con = list(italy_cases.values())[2]
        act = list(italy_cases.values())[3]
        rec = list(italy_cases.values())[5]
        det = list(italy_cases.values())[4]
        self.stay.configure(text=country.upper())
        self.Confirmed.configure(text="Confirmed \n"+str(con))
        self.Active.configure(text="Active \n"+str(act))
        self.Recovery.configure(text="Recovery \n"+str(rec))
        self.Death.configure(text="Death \n"+str(det))

if __name__ == '__main__':
    vp_start_gui()





