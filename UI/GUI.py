#!usr/bin/python

import Tkinter
from Tkinter import *
import ttk
import tkMessageBox
import database

class GUI:

    def __init__( self , master ):
        self.master = master
        self.rnaSearch = None
        self.rbpSearch = None

        master.title( "Database" )

        self.searchFrame = self.setSearchFrame( master )
        self.resultsFrame = self.setResultsFrame( master )

    #need to search by species or protein name
    def setSearchFrame( self , root ):
        #create frame
        searchFrame = Frame( root , height = 1000 , width = 500 )

        self.rnaSearch = DynamicFrame( self.master.title, searchFrame, "rna")
        self.rnaSearch.pack(side = TOP)

        self.rbpSearch = DynamicFrame( self.master.title, searchFrame, "rbp")
        self.rbpSearch.pack(side = TOP)

        searchFrame.pack( side = LEFT )

    def setResultsFrame( self , root ):
        resultsFrame = Frame( root , bg = "black" , height = 1000, width = 1000 )
        resultsFrame.pack( side = RIGHT )


class DynamicFrame(Frame):

    def __init__(self, title, master, type):
        Frame.__init__(self, master)
        self.master.title = title
        #self.master = master
        #self.frame = Frame( master , height 1000 , width = 500 )
        self.type = type
        self.label = None
        self.entry = None
        self.comboBox = None
        self.button = None
        self.options = None
        self.stringVar = StringVar()

        self.setDynamicSearch( self , type )

    def setDynamicSearch( self , root , type ):
        #create frame
        self.frame = Frame( root , height = 100, width = 350 )

        self.stringVar.trace( "w" , lambda name , index , mode , stringVar = self.stringVar: self.callback())

        self.label = Label( self.master , text = "Search By " + type , relief = RAISED )
        self.entry = Entry( self.master , textvariable = self.stringVar, bd = 2 )
        self.label.pack( side = TOP )
        self.entry.pack( side = LEFT )

        self.comboBox = ttk.Combobox( self.master, textvariable = self.options)

        self.button = Tkinter.Button( self.master, text = "Search" , height = 3, command = self.tempSearchCommand )

        self.comboBox.pack( side = LEFT )
        self.button.pack ( side = LEFT )

        #self.pack( side = TOP )

    def callback( self ):
        print "callback"
        if self.type == "rbp":
            print "callback rbp"
            database.searchByProtein(str(self.stringVar.get()))
        else:
            print "callback rna"
            database.searchByRNA(str(self.stringVar.get()))


    def tempSearchCommand( self ):
        #tkMessageBox.showinfo( "Test" , "Works")
        print "tempSearch"

    #TODO labeleframe and grid

root = Tk()
gui = GUI(root)
root.mainloop()

#print database.search("1", "experiments")
