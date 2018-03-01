#!usr/bin/python

import Tkinter
from Tkinter import *
import tkMessageBox
import database

class GUI:

    def __init__( self, master ):
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
        label = Label( entryFrame , text = "Search By " + type , relief = RAISED )
        label.pack( side = TOP )
        entry = Entry( entryFrame , bd = 2 )
        entry.pack( side = LEFT )

        #TODO change to combobox
        listbox = Listbox( entryFrame , selectmode = SINGLE , yscrollcommand = TRUE )
        listbox.pack( side = LEFT )
        button = Tkinter.Button( entryFrame, text = "Search" , height = 3, command = self.tempSearchCommand )
        button.pack ( side = LEFT )

        entryFrame.pack( side = TOP )
        elements = database.search( type , entry.get() )
    #    elements = self.searchData( type , entry.get() )
        listbox.insert( 0 , elements )

    #def searchData( self , type , entries ):
    #    database.search( type , )

    def setResultsFrame( self , root ):
        resultsFrame = Frame( root , bg = "black" , height = 1000, width = 1000 )
        resultsFrame.pack( side = RIGHT )

    def tempSearchCommand( self ):
        tkMessageBox.showinfo( "Test" , "Works" )


root = Tk()
gui = GUI(root)
root.mainloop()
