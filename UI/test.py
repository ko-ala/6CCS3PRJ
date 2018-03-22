#!/usr/bin/python

import sys
from Tkinter import *

print "hello world"


def test():
    print "test"


master = Tk()

w = Label(master, text="Hello, world!")
w.config( font = ( "Calibri" , 12 ))
w.bind("<Enter>", test())
w.pack()

mainloop()
