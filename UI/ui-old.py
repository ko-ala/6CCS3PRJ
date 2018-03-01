#!usr/bin/python

import Tkinter
from Tkinter import *
import tkMessageBox

root = Tk()

frame = Frame(root)
frame.pack()

sideFrame = Frame(root, height=1000, width=500)
sideFrame.pack( side = LEFT)
middleFrame = Frame(root, bg="black", height=1000, width=1000)
middleFrame.pack(side = RIGHT)

def searchCallBack():
    tkMessageBox.showinfo("Test", "Works")

label = Label(sideFrame, text="Sequence", relief=RAISED)
label.pack(side = LEFT)
entry = Entry(sideFrame, bd=3)
entry.pack(side = LEFT)
button = Tkinter.Button(sideFrame, text="Search", command = searchCallBack)
button.pack(side = RIGHT)

root.mainloop()
