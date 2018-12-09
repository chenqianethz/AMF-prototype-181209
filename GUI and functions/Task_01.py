#! /usr/bin/env python
#  -*- coding: utf-8 -*-
#
# GUI module generated by PAGE version 4.19
#  in conjunction with Tcl version 8.6
#    Nov 26, 2018 02:29:05 PM CET  platform: Windows NT

import datetime
from datetime import timedelta
import pandas as pd
import sqlite3
from tkinter import messagebox
from tkinter import *
import time

pd.set_option('display.max_columns', 500)

conn = sqlite3.connect(
    'C:\\Users\\chenqi\\polybox\\Qian\\1 Doctoral Research\\16.02-AMF\\P6 GUI development\\data\\Aturm.sqlite')
cur = conn.cursor()

df_Tasks = pd.read_sql_query('select * from Tasks', conn)
df_Tasks['Start_Date'] = pd.to_datetime(df_Tasks['Start_Date'])

df_Constraint = pd.read_sql_query('select * from construction_constraints',conn)




import sys

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

import Task_01_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = tk.Tk()
    top = Toplevel_01 (root)
    Task_01_support.init(root, top)
    root.mainloop()

w = None
def create_Toplevel_01(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = tk.Toplevel (root)
    top = Toplevel_01 (w)
    Task_01_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_Toplevel_01():
    global w
    w.destroy()
    w = None

class Toplevel_01:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85' 
        _ana2color = '#ececec' # Closest X11 color: 'gray92' 
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("892x810+297+153")
        top.title("Planning&Design")
        top.configure(background="#d9d9d9")
        top.configure(highlightbackground="#d9d9d9")
        top.configure(highlightcolor="black")
        top.wm_iconbitmap('logo.ico')


        def QueryButton_all():
            root1 = Tk()
            root1.title('All tasks')
            root1.wm_iconbitmap('logo.ico')
            frame = Frame(root1)
            frame.pack()
            tree = ttk.Treeview(frame, columns=(1, 2, 3, 4, 5, 6, 7), show='headings')
            tree.heading(1, text='task_ID')
            tree.heading(2, text='Planned Start Date')
            tree.heading(3, text='Planned Finish Date')
            tree.heading(4, text='Baseline Start Date')
            tree.heading(5, text='Baseline Finish Date')
            tree.heading(6, text='Actual Start Date')
            tree.heading(7, text='Actual Finish Date')
            tree.pack()

            scroll = ttk.Scrollbar(frame, orient="vertical", command=tree.yview)
            tree.configure(yscrollcommand=scroll.set)
            for i in range(len(df_Tasks)):
                tree.insert('', 'end',
                            values=(df_Tasks.loc[i, 'task_ID'], df_Tasks.loc[i, 'Start_Date'], df_Tasks.loc[i, 'Finish_Date'],
                                    df_Tasks.loc[i, 'Baseline_Start'], df_Tasks.loc[i, 'Baseline_Finish'],
                                    df_Tasks.loc[i, 'Actual_Start'], df_Tasks.loc[i, 'Actual_Finish']))
            root1.mainloop()

        self.Button6 = tk.Button(top, command = QueryButton_all)
        self.Button6.place(relx=0.011, rely=0.012, height=36, width=107
                           , bordermode='ignore')
        self.Button6.configure(activebackground="#ececec")
        self.Button6.configure(activeforeground="#000000")
        self.Button6.configure(background="#d9d9d9")
        self.Button6.configure(disabledforeground="#a3a3a3")
        self.Button6.configure(foreground="#000000")
        self.Button6.configure(highlightbackground="#d9d9d9")
        self.Button6.configure(highlightcolor="black")
        self.Button6.configure(pady="0")
        self.Button6.configure(text='''Display all tasks''')


        self.Labelframe1 = tk.LabelFrame(top)
        self.Labelframe1.place(relx=0.011, rely=0.07, relheight=0.320
                , relwidth=0.975)
        self.Labelframe1.configure(relief='groove')
        self.Labelframe1.configure(foreground="black")
        self.Labelframe1.configure(text='''6 Months Look-ahead Milestones''')
        self.Labelframe1.configure(background="#d9d9d9")
        self.Labelframe1.configure(highlightbackground="#d9d9d9")
        self.Labelframe1.configure(highlightcolor="black")
        self.Labelframe1.configure(width=870)

        self.Label1 = tk.Label(self.Labelframe1)
        self.Label1.place(relx=0.011, rely=0.090, height=21, width=174
                , bordermode='ignore')
        self.Label1.configure(activebackground="#f9f9f9")
        self.Label1.configure(activeforeground="black")
        self.Label1.configure(background="#84d0d8")
        self.Label1.configure(disabledforeground="#a3a3a3")
        self.Label1.configure(foreground="#000000")
        self.Label1.configure(highlightbackground="#d9d9d9")
        self.Label1.configure(highlightcolor="black")
        self.Label1.configure(text='''Input Start Date''')


        self.Entry1 = tk.Entry(self.Labelframe1)
        self.Entry1.place(relx=0.23, rely=0.090, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry1.configure(background="white")
        self.Entry1.configure(disabledforeground="#a3a3a3")
        self.Entry1.configure(font="TkFixedFont")
        self.Entry1.configure(foreground="#000000")
        self.Entry1.configure(highlightbackground="#d9d9d9")
        self.Entry1.configure(highlightcolor="black")
        self.Entry1.configure(insertbackground="black")
        self.Entry1.configure(selectbackground="#c4c4c4")
        self.Entry1.configure(selectforeground="black")



        # def QueryButton_1():
        #     self.Listbox1.delete(0, tk.END)                                                            # clear all the contents before writing into Listbox
        #     Query_Start_Date_M = self.Entry1.get()
        #     Query_Start_Date_M = pd.to_datetime(Query_Start_Date_M)
        #     Query_Finish_Date_M = Query_Start_Date_M + timedelta(days=180)
        #     for i in range(len(df_Tasks)):
        #         Start_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Start_Date'])
        #         Finish_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Finish_Date'])
        #         Milestone = df_Tasks.loc[i, 'task_ID']
        #         if (Start_Date_df >= Query_Start_Date_M and Finish_Date_df <= Query_Finish_Date_M) and ('milestone' in Milestone):
        #             content = [df_Tasks.loc[i, 'task_ID'], df_Tasks.loc[i, 'Start_Date']]
        #             self.Listbox1.insert(i, content)


        def QueryButton_1():
            self.Listbox1.delete(0,tk.END)
            tree_1 = ttk.Treeview(self.Listbox1, columns = (1,2), show = 'headings')
            tree_1.heading(1, text = 'Queried Milestone')
            tree_1.heading(2, text = 'Due Date')
            tree_1.pack(fill = 'both')
            scroll = ttk.Scrollbar(self.Listbox1, orient = 'vertical', command = tree_1.yview)
            tree_1.configure(yscrollcommand=scroll.set)

            Query_Start_Date_M = self.Entry1.get()
            Query_Start_Date_M = pd.to_datetime(Query_Start_Date_M)
            Query_Finish_Date_M = Query_Start_Date_M + timedelta(days=180)
            for i in range(len(df_Tasks)):
                Start_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Start_Date'])
                Finish_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Finish_Date'])
                Milestone = df_Tasks.loc[i, 'task_ID']
                if (Start_Date_df >= Query_Start_Date_M and Finish_Date_df <= Query_Finish_Date_M) and ('milestone' in Milestone):
                    tree_1.insert('','end', values = (df_Tasks.loc[i, 'task_ID'],df_Tasks.loc[i, 'Start_Date']))



        self.Button1 = tk.Button(self.Labelframe1,command = QueryButton_1)
        self.Button1.place(relx=0.322, rely=0.198, height=24, width=107
                , bordermode='ignore')
        self.Button1.configure(activebackground="#ececec")
        self.Button1.configure(activeforeground="#000000")
        self.Button1.configure(background="#d9d9d9")
        self.Button1.configure(disabledforeground="#a3a3a3")
        self.Button1.configure(foreground="#000000")
        self.Button1.configure(highlightbackground="#d9d9d9")
        self.Button1.configure(highlightcolor="black")
        self.Button1.configure(pady="0")
        self.Button1.configure(text='''Query''')

        self.Listbox1 = tk.Listbox(self.Labelframe1)
        self.Listbox1.place(relx=0.011, rely=0.315, relheight=0.612
                , relwidth=0.97, bordermode='ignore')
        self.Listbox1.configure(background="white")
        self.Listbox1.configure(disabledforeground="#a3a3a3")
        self.Listbox1.configure(font="TkFixedFont")
        self.Listbox1.configure(foreground="#000000")
        self.Listbox1.configure(highlightbackground="#d9d9d9")
        self.Listbox1.configure(highlightcolor="black")
        self.Listbox1.configure(selectbackground="#c4c4c4")
        self.Listbox1.configure(selectforeground="black")
        self.Listbox1.configure(width=844)

        self.Labelframe2 = tk.LabelFrame(top)
        self.Labelframe2.place(relx=0.011, rely=0.395, relheight=0.586
                , relwidth=0.975)
        self.Labelframe2.configure(relief='groove')
        self.Labelframe2.configure(foreground="black")
        self.Labelframe2.configure(text='''2 Weeks Look-ahead''')
        self.Labelframe2.configure(background="#d9d9d9")
        self.Labelframe2.configure(highlightbackground="#d9d9d9")
        self.Labelframe2.configure(highlightcolor="black")
        self.Labelframe2.configure(width=870)

        self.Entry5_2 = tk.Entry(self.Labelframe2)
        self.Entry5_2.place(relx=0.23, rely=0.063, height=20, relwidth=0.269
                            , bordermode='ignore')
        self.Entry5_2.configure(background="white")
        self.Entry5_2.configure(disabledforeground="#a3a3a3")
        self.Entry5_2.configure(font="TkFixedFont")
        self.Entry5_2.configure(foreground="#000000")
        self.Entry5_2.configure(highlightbackground="#d9d9d9")
        self.Entry5_2.configure(highlightcolor="black")
        self.Entry5_2.configure(insertbackground="black")
        self.Entry5_2.configure(selectbackground="#c4c4c4")
        self.Entry5_2.configure(selectforeground="black")

        self.Entry5 = tk.Entry(self.Labelframe2)
        self.Entry5.place(relx=0.23, rely=0.126, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry5.configure(background="white")
        self.Entry5.configure(disabledforeground="#a3a3a3")
        self.Entry5.configure(font="TkFixedFont")
        self.Entry5.configure(foreground="#000000")
        self.Entry5.configure(highlightbackground="#d9d9d9")
        self.Entry5.configure(highlightcolor="black")
        self.Entry5.configure(insertbackground="black")
        self.Entry5.configure(selectbackground="#c4c4c4")
        self.Entry5.configure(selectforeground="black")

        self.Entry6 = tk.Entry(self.Labelframe2)
        self.Entry6.place(relx=0.23, rely=0.189, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry6.configure(background="white")
        self.Entry6.configure(disabledforeground="#a3a3a3")
        self.Entry6.configure(font="TkFixedFont")
        self.Entry6.configure(foreground="#000000")
        self.Entry6.configure(highlightbackground="#d9d9d9")
        self.Entry6.configure(highlightcolor="black")
        self.Entry6.configure(insertbackground="black")
        self.Entry6.configure(selectbackground="#c4c4c4")
        self.Entry6.configure(selectforeground="black")

        self.TSeparator1 = ttk.Separator(self.Labelframe2)
        self.TSeparator1.place(relx=0.511, rely=0.116, relheight=0.337
                , bordermode='ignore')
        self.TSeparator1.configure(orient="vertical")

        self.Label2 = tk.Label(self.Labelframe2)
        self.Label2.place(relx=0.011, rely=0.126, height=21, width=174
                , bordermode='ignore')
        self.Label2.configure(activebackground="#f9f9f9")
        self.Label2.configure(activeforeground="black")
        self.Label2.configure(background="#7da2d8")
        self.Label2.configure(disabledforeground="#a3a3a3")
        self.Label2.configure(foreground="#000000")
        self.Label2.configure(highlightbackground="#d9d9d9")
        self.Label2.configure(highlightcolor="black")
        self.Label2.configure(text='''Labor Preparation %''')

        self.Label2_6 = tk.Label(self.Labelframe2)
        self.Label2_6.place(relx=0.011, rely=0.189, height=21, width=174
                , bordermode='ignore')
        self.Label2_6.configure(activebackground="#f9f9f9")
        self.Label2_6.configure(activeforeground="black")
        self.Label2_6.configure(background="#7da2d8")
        self.Label2_6.configure(disabledforeground="#a3a3a3")
        self.Label2_6.configure(foreground="#000000")
        self.Label2_6.configure(highlightbackground="#d9d9d9")
        self.Label2_6.configure(highlightcolor="black")
        self.Label2_6.configure(text='''Machine Preparation %''')

        self.Label2_7 = tk.Label(self.Labelframe2)
        self.Label2_7.place(relx=0.011, rely=0.253, height=21, width=174
                , bordermode='ignore')
        self.Label2_7.configure(activebackground="#f9f9f9")
        self.Label2_7.configure(activeforeground="black")
        self.Label2_7.configure(background="#7da2d8")
        self.Label2_7.configure(disabledforeground="#a3a3a3")
        self.Label2_7.configure(foreground="#000000")
        self.Label2_7.configure(highlightbackground="#d9d9d9")
        self.Label2_7.configure(highlightcolor="black")
        self.Label2_7.configure(text='''Predecential Constraints''')

        self.Entry7 = tk.Entry(self.Labelframe2)
        self.Entry7.place(relx=0.23, rely=0.253, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry7.configure(background="white")
        self.Entry7.configure(disabledforeground="#a3a3a3")
        self.Entry7.configure(font="TkFixedFont")
        self.Entry7.configure(foreground="#000000")
        self.Entry7.configure(highlightbackground="#d9d9d9")
        self.Entry7.configure(highlightcolor="black")
        self.Entry7.configure(insertbackground="black")
        self.Entry7.configure(selectbackground="#c4c4c4")
        self.Entry7.configure(selectforeground="black")

        self.Label2_8 = tk.Label(self.Labelframe2)
        self.Label2_8.place(relx=0.011, rely=0.316, height=21, width=174
                , bordermode='ignore')
        self.Label2_8.configure(activebackground="#f9f9f9")
        self.Label2_8.configure(activeforeground="black")
        self.Label2_8.configure(background="#7da2d8")
        self.Label2_8.configure(disabledforeground="#a3a3a3")
        self.Label2_8.configure(foreground="#000000")
        self.Label2_8.configure(highlightbackground="#d9d9d9")
        self.Label2_8.configure(highlightcolor="black")
        self.Label2_8.configure(text='''Space Preparation %''')

        self.Entry8 = tk.Entry(self.Labelframe2)
        self.Entry8.place(relx=0.23, rely=0.316, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry8.configure(background="white")
        self.Entry8.configure(disabledforeground="#a3a3a3")
        self.Entry8.configure(font="TkFixedFont")
        self.Entry8.configure(foreground="#000000")
        self.Entry8.configure(highlightbackground="#d9d9d9")
        self.Entry8.configure(highlightcolor="black")
        self.Entry8.configure(insertbackground="black")
        self.Entry8.configure(selectbackground="#c4c4c4")
        self.Entry8.configure(selectforeground="black")

        self.Label2_9 = tk.Label(self.Labelframe2)
        self.Label2_9.place(relx=0.011, rely=0.379, height=21, width=174
                , bordermode='ignore')
        self.Label2_9.configure(activebackground="#f9f9f9")
        self.Label2_9.configure(activeforeground="black")
        self.Label2_9.configure(background="#7da2d8")
        self.Label2_9.configure(disabledforeground="#a3a3a3")
        self.Label2_9.configure(foreground="#000000")
        self.Label2_9.configure(highlightbackground="#d9d9d9")
        self.Label2_9.configure(highlightcolor="black")
        self.Label2_9.configure(text='''Permits Preparation %''')

        self.Entry9 = tk.Entry(self.Labelframe2)
        self.Entry9.place(relx=0.23, rely=0.379, height=20, relwidth=0.269
                , bordermode='ignore')
        self.Entry9.configure(background="white")
        self.Entry9.configure(disabledforeground="#a3a3a3")
        self.Entry9.configure(font="TkFixedFont")
        self.Entry9.configure(foreground="#000000")
        self.Entry9.configure(highlightbackground="#d9d9d9")
        self.Entry9.configure(highlightcolor="black")
        self.Entry9.configure(insertbackground="black")
        self.Entry9.configure(selectbackground="#c4c4c4")
        self.Entry9.configure(selectforeground="black")

        self.Label1_10 = tk.Label(self.Labelframe2)
        self.Label1_10.place(relx=0.529, rely=0.126, height=21, width=174
                , bordermode='ignore')
        self.Label1_10.configure(activebackground="#f9f9f9")
        self.Label1_10.configure(activeforeground="black")
        self.Label1_10.configure(background="#84d0d8")
        self.Label1_10.configure(disabledforeground="#a3a3a3")
        self.Label1_10.configure(foreground="#000000")
        self.Label1_10.configure(highlightbackground="#d9d9d9")
        self.Label1_10.configure(highlightcolor="black")
        self.Label1_10.configure(text='''Planned Start Date''')

        self.Label1_1 = tk.Label(self.Labelframe2)
        self.Label1_1.place(relx=0.529, rely=0.189, height=21, width=174
                , bordermode='ignore')
        self.Label1_1.configure(activebackground="#f9f9f9")
        self.Label1_1.configure(activeforeground="black")
        self.Label1_1.configure(background="#84d0d8")
        self.Label1_1.configure(disabledforeground="#a3a3a3")
        self.Label1_1.configure(foreground="#000000")
        self.Label1_1.configure(highlightbackground="#d9d9d9")
        self.Label1_1.configure(highlightcolor="black")
        self.Label1_1.configure(text='''Planned Finish Date''')

        self.Entry10 = tk.Entry(self.Labelframe2)
        self.Entry10.place(relx=0.747, rely=0.126, height=20, relwidth=0.234
                , bordermode='ignore')
        self.Entry10.configure(background="white")
        self.Entry10.configure(disabledforeground="#a3a3a3")
        self.Entry10.configure(font="TkFixedFont")
        self.Entry10.configure(foreground="#000000")
        self.Entry10.configure(highlightbackground="#d9d9d9")
        self.Entry10.configure(highlightcolor="black")
        self.Entry10.configure(insertbackground="black")
        self.Entry10.configure(selectbackground="#c4c4c4")
        self.Entry10.configure(selectforeground="black")

        self.Entry11 = tk.Entry(self.Labelframe2)
        self.Entry11.place(relx=0.747, rely=0.189, height=20, relwidth=0.234
                , bordermode='ignore')
        self.Entry11.configure(background="white")
        self.Entry11.configure(disabledforeground="#a3a3a3")
        self.Entry11.configure(font="TkFixedFont")
        self.Entry11.configure(foreground="#000000")
        self.Entry11.configure(highlightbackground="#d9d9d9")
        self.Entry11.configure(highlightcolor="black")
        self.Entry11.configure(insertbackground="black")
        self.Entry11.configure(selectbackground="#c4c4c4")
        self.Entry11.configure(selectforeground="black")


        self.Label3 = tk.Label(self.Labelframe2)
        self.Label3.place(relx=0.011, rely=0.063, height=21, width=174
                , bordermode='ignore')
        self.Label3.configure(activebackground="#f9f9f9")
        self.Label3.configure(activeforeground="black")
        self.Label3.configure(background="#d8bace")
        self.Label3.configure(disabledforeground="#a3a3a3")
        self.Label3.configure(foreground="#000000")
        self.Label3.configure(highlightbackground="#d9d9d9")
        self.Label3.configure(highlightcolor="black")
        self.Label3.configure(text='''Task ID''')

        self.Label3_4 = tk.Label(self.Labelframe2)
        self.Label3_4.place(relx=0.011, rely=0.442, height=21, width=174
                , bordermode='ignore')
        self.Label3_4.configure(activebackground="#f9f9f9")
        self.Label3_4.configure(activeforeground="black")
        self.Label3_4.configure(background="#d8bace")
        self.Label3_4.configure(disabledforeground="#a3a3a3")
        self.Label3_4.configure(foreground="#000000")
        self.Label3_4.configure(highlightbackground="#d9d9d9")
        self.Label3_4.configure(highlightcolor="black")
        self.Label3_4.configure(text='''Need for update?''')


        option = StringVar()                                                                      # only one choice radio-buttons
        self.Radiobutton1 = tk.Radiobutton(self.Labelframe2,value='1',variable=option)
        self.Radiobutton1.place(relx=0.23, rely=0.442, relheight=0.053
                , relwidth=0.053, bordermode='ignore')
        self.Radiobutton1.configure(activebackground="#ececec")
        self.Radiobutton1.configure(activeforeground="#000000")
        self.Radiobutton1.configure(background="#d9d9d9")
        self.Radiobutton1.configure(disabledforeground="#a3a3a3")
        self.Radiobutton1.configure(foreground="#000000")
        self.Radiobutton1.configure(highlightbackground="#d9d9d9")
        self.Radiobutton1.configure(highlightcolor="black")
        self.Radiobutton1.configure(justify='left')
        self.Radiobutton1.configure(text='''Yes''')

        self.Radiobutton1_5 = tk.Radiobutton(self.Labelframe2,value='0',variable=option)
        self.Radiobutton1_5.place(relx=0.345, rely=0.442, relheight=0.053
                , relwidth=0.067, bordermode='ignore')
        self.Radiobutton1_5.configure(activebackground="#ececec")
        self.Radiobutton1_5.configure(activeforeground="#000000")
        self.Radiobutton1_5.configure(background="#d9d9d9")
        self.Radiobutton1_5.configure(disabledforeground="#a3a3a3")
        self.Radiobutton1_5.configure(foreground="#000000")
        self.Radiobutton1_5.configure(highlightbackground="#d9d9d9")
        self.Radiobutton1_5.configure(highlightcolor="black")
        self.Radiobutton1_5.configure(justify='left')
        self.Radiobutton1_5.configure(text='''No''')


# update the look ahead schedules and send notifications to all participants

        def Update_look():
            task_ID_input = str(self.Entry5_2.get())
            labor_prep = str(self.Entry5.get())
            machine_prep = str(self.Entry6.get())
            precedentials = str(self.Entry7.get())
            space_prep = str(self.Entry8.get())
            permits = str(self.Entry9.get())
            Start_Date_Update_look = str(self.Entry10.get())
            Finish_Date_Update_look = str(self.Entry11.get())
            Duration_Update_look = str(pd.to_datetime(Finish_Date_Update_look)-pd.to_datetime(Start_Date_Update_look))      # the output to sql should be text


            value = option.get()
            if value == '1':
                messagebox.showinfo("Notification", "Update is done")
                for i in range(len(df_Tasks)):
                    if df_Tasks.loc[i,'task_ID']==task_ID_input:
                        df_Tasks.loc[i,'Update'] = str(time.localtime())                        # @_@ tracking the updates of tasks, each update is marked as a current timestamp. compare the timestamps to know if there is a new update.
                        df_Tasks.loc[i, 'Duration_incl.']= Duration_Update_look
                        df_Tasks.loc[i, 'Start_Date']= Start_Date_Update_look                   # binding errors: convert python timestamps into sql text. keep the original format of sql text
                        df_Tasks.loc[i, 'Finish_Date']= Finish_Date_Update_look
                        for j in range(len(df_Constraint)):
                            if df_Constraint.loc[j,'task_ID']==task_ID_input:                   # updating  the constraint informtaion for each task.
                                df_Constraint.loc[j,'labor_prep']=labor_prep
                                df_Constraint.loc[j,'machine_prep']=machine_prep
                                df_Constraint.loc[j,'space_prep']=space_prep
                                df_Constraint.loc[j,'precedentials']=precedentials
                                df_Constraint.loc[j, 'permits']=permits
                            else:
                                pass
                    else:
                        pass
            elif value == '0':
                messagebox.showinfo("Notification", "No update executed")

            df_Tasks.to_sql('Tasks', conn, if_exists='replace', index=False)
            df_Constraint.to_sql('construction_constraints', conn, if_exists='replace', index=False)
            conn.commit()


        self.Button4 = tk.Button(self.Labelframe2, command=Update_look)
        self.Button4.place(relx=0.805, rely=0.253, height=24, width=127
                           , bordermode='ignore')
        self.Button4.configure(activebackground="#ececec")
        self.Button4.configure(activeforeground="#000000")
        self.Button4.configure(background="#d9d9d9")
        self.Button4.configure(disabledforeground="#a3a3a3")
        self.Button4.configure(foreground="#000000")
        self.Button4.configure(highlightbackground="#d9d9d9")
        self.Button4.configure(highlightcolor="black")
        self.Button4.configure(pady="0")
        self.Button4.configure(text='''Update''')


        self.Label1_6 = tk.Label(self.Labelframe2)
        self.Label1_6.place(relx=0.529, rely=0.337, height=21, width=174
                , bordermode='ignore')
        self.Label1_6.configure(activebackground="#f9f9f9")
        self.Label1_6.configure(activeforeground="black")
        self.Label1_6.configure(background="#84d0d8")
        self.Label1_6.configure(disabledforeground="#a3a3a3")
        self.Label1_6.configure(foreground="#000000")
        self.Label1_6.configure(highlightbackground="#d9d9d9")
        self.Label1_6.configure(highlightcolor="black")
        self.Label1_6.configure(text='''Start Date''')



        self.Entry12 = tk.Entry(self.Labelframe2)
        self.Entry12.place(relx=0.747, rely=0.337, height=20, relwidth=0.234
                , bordermode='ignore')
        self.Entry12.configure(background="white")
        self.Entry12.configure(disabledforeground="#a3a3a3")
        self.Entry12.configure(font="TkFixedFont")
        self.Entry12.configure(foreground="#000000")
        self.Entry12.configure(highlightbackground="#d9d9d9")
        self.Entry12.configure(highlightcolor="black")
        self.Entry12.configure(insertbackground="black")
        self.Entry12.configure(selectbackground="#c4c4c4")
        self.Entry12.configure(selectforeground="black")

        # def Query_Button5():
        #     Query_Start_Date_look = str(self.Entry12.get())
        #     Query_Start_Date_look = pd.to_datetime(Query_Start_Date_look)
        #     self.Listbox2.delete(0, tk.END)                                                # # clear all the contents before writing into Listbox
        #     for i in range(len(df_Tasks)):
        #         Start_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Start_Date'])
        #         Finish_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Finish_Date'])
        #         Query_Finish_Date_look = pd.to_datetime(Query_Start_Date_look + timedelta(days=14))
        #         if Query_Start_Date_look <= Start_Date_df and Query_Finish_Date_look >= Finish_Date_df and ('milestone' not in df_Tasks.loc[i,'task_ID']):
        #             content2 = [df_Tasks.loc[i,'task_ID'],df_Tasks.loc[i,'Start_Date'],df_Tasks.loc[i,'Finish_Date']]
        #             self.Listbox2.insert(i, content2)

        def Query_Button5():
            self.Listbox2.delete(0, tk.END)
            tree_2 = ttk.Treeview(self.Listbox2, columns=(1, 2, 3, 4, 5), show='headings')
            tree_2.heading(1, text='Queried Task_ID')
            tree_2.heading(2, text='Planned Start Date')
            tree_2.heading(3, text='Planned Finish Date')
            tree_2.heading(4, text='Baseline Start Date')
            tree_2.heading(5, text='Baseline Finish Date')
            tree_2.pack(fill='both')
            yscroll = ttk.Scrollbar(self.Listbox2, orient=tk.VERTICAL, command=tree_2.yview)
            xscroll = ttk.Scrollbar(self.Listbox2, orient=tk.HORIZONTAL, command=tree_2.xview)
            tree_2.configure(yscrollcommand=yscroll.set, xscrollcommand=xscroll.set)

            Query_Start_Date_look = str(self.Entry12.get())
            Query_Start_Date_look = pd.to_datetime(Query_Start_Date_look)
            for i in range(len(df_Tasks)):
                Start_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Start_Date'])
                Finish_Date_df = pd.to_datetime(df_Tasks.loc[i, 'Finish_Date'])
                Query_Finish_Date_look = pd.to_datetime(Query_Start_Date_look + timedelta(days=14))
                if Query_Start_Date_look <= Start_Date_df and Query_Finish_Date_look >= Finish_Date_df and ('milestone' not in df_Tasks.loc[i,'task_ID']):
                    tree_2.insert('', 'end', values=(df_Tasks.loc[i, 'task_ID'], df_Tasks.loc[i, 'Start_Date'],df_Tasks.loc[i,'Finish_Date'],
                                                     df_Tasks.loc[i,'Baseline_Start'],df_Tasks.loc[i,'Baseline_Finish']))

        self.Button5 = tk.Button(self.Labelframe2,command = Query_Button5)
        self.Button5.place(relx=0.805, rely=0.421, height=24, width=127
                           , bordermode='ignore')
        self.Button5.configure(activebackground="#ececec")
        self.Button5.configure(activeforeground="#000000")
        self.Button5.configure(background="#d9d9d9")
        self.Button5.configure(disabledforeground="#a3a3a3")
        self.Button5.configure(foreground="#000000")
        self.Button5.configure(highlightbackground="#d9d9d9")
        self.Button5.configure(highlightcolor="black")
        self.Button5.configure(pady="0")
        self.Button5.configure(text='''Query''')

        self.Listbox2 = tk.Listbox(self.Labelframe2)
        self.Listbox2.place(relx=0.011, rely=0.526, relheight=0.446
                            , relwidth=0.97, bordermode='ignore')
        self.Listbox2.configure(background="white")
        self.Listbox2.configure(disabledforeground="#a3a3a3")
        self.Listbox2.configure(font="TkFixedFont")
        self.Listbox2.configure(highlightbackground="#d9d9d9")
        self.Listbox2.configure(highlightcolor="black")
        self.Listbox2.configure(selectbackground="#c4c4c4")
        self.Listbox2.configure(selectforeground="black")
        self.Listbox2.configure(width=844)





if __name__ == '__main__':
    vp_start_gui()

# conn.close()
# cur.close()

