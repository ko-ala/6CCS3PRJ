#!usr/bin/python

import Tkinter
from Tkinter import *
import ttk
import tkMessageBox
import database

class searchFrame:

def __init__( self , master ):
    self.master = master
    master.title( "Database" )

    self.setSearchFrame( master )
    self.setResultsFrame( master )

#need to search by species or protein name
def setSearchFrame( self , root ):
    #create frame
    searchFrame = Frame( root , height = 1000 , width = 500 )
    searchFrame.pack( side = LEFT )

    self.setDynamicSearch( searchFrame, "RNA" )
    self.setDynamicSearch( searchFrame, "RBP" )

def setDynamicSearch( self , root , type ):
    #create frame
    entryFrame = Frame( root , height = 100, width = 350 )
    stringVar = StringVar()
    stringVar.trace( "w" , lambda name , index , mode , stringVar = stringVar: self.callback( stringVar ))

    label = Label( entryFrame , text = "Search By " + type , relief = RAISED )
    entry = Entry( entryFrame , textvariable = stringVar, bd = 2 )
    label.pack( side = TOP )
    entry.pack( side = LEFT )

    boxList = []
    comboBox = ttk.Combobox( entryFrame , textvariable = boxList)

    button = Tkinter.Button( entryFrame, text = "Search" , height = 3, command = self.tempSearchCommand )

    comboBox.pack( side = LEFT )
    button.pack ( side = LEFT )

    entryFrame.pack( side = TOP )
    # elements = self.searchData( type , entry.get() )
    print database.search( "proteins" , entry.get() )
    #listbox.insert( 0 , elements )

def callback( self , stringVar ):
    print "callback"

def setResultsFrame( self , root ):
    resultsFrame = Frame( root , bg = "black" , height = 1000, width = 1000 )
    resultsFrame.pack( side = RIGHT )

def tempSearchCommand( self ):
    #tkMessageBox.showinfo( "Test" , "Works")
    print "tempSearch"

root = Tk()
gui = GUI(root)
root.mainloop()

#print database.search("1", "experiments")
