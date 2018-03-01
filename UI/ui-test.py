#!usr/bin/python

import Tkinter
from Tkinter import *
import tkMessageBox

#need to search by species or protein name
def setSearchFrame( root ):
    #create frame
    sideFrame = Frame( root , height = 1000 , width = 500 )
    sideFrame.pack( side = LEFT )
    #create label
    label = Label( sideFrame , text = "Sequence" , relief = RAISED )
    label.pack( side = LEFT )
    #create entry field
    entry = Entry( sideFrame , bd = 3 )
    entry.pack( side = LEFT )
    #create search button
    button = Tkinter.Button( sideFrame , text = "Search" , command = tempSearchCommand )
    button.pack( side = RIGHT )

def setResultsFrame( root ):
    middleFrame = Frame( root , bg = "black" , height = 1000, width = 1000 )
    middleFrame.pack( side = RIGHT )

def tempSearchCommand():
    tkMessageBox.showinfo( "Test" , "Works" )


root = Tk()

frame = Frame(root)
frame.pack()

setSearchFrame(root)
setResultsFrame(root)
root.mainloop()
