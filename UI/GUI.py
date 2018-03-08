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
        self.results = StringVar()

        master.title( "Database" )

        self.results.trace( "w" , lambda name , index , mode , stringVar = self.results: self.callback())

        self.searchFrame = self.setSearchFrame( master )
        self.resultsFrame = self.setResultsFrame( master )

    #need to search by species or protein name
    def setSearchFrame( self , root ):
        #create frame
        searchFrame = Frame( root , height = 1000 , width = 500 )

        self.rnaSearch = DynamicSearchFrame( self, self.master.title, searchFrame, "rna")
        self.rnaSearch.pack(side = TOP)

        self.rbpSearch = DynamicSearchFrame( self, self.master.title, searchFrame, "rbp")
        self.rbpSearch.pack(side = TOP)

        searchFrame.pack( side = LEFT )

    def setResultsFrame( self , root ):
        resultsFrame = Frame( root , bg = "black" , height = 1000, width = 1000 )
        resultsFrame.pack( side = RIGHT )

    def callback( self ):
        print "got results"


class DynamicSearchFrame(Frame):

    def __init__(self, parent, title, master, type):
        Frame.__init__(self, master)
        self.master.title = title
        self.parent = parent
        #self.master = master
        #self.frame = Frame( master , height 1000 , width = 500 )
        self.type = type
        self.label = None
        self.entry = None
        self.comboBox = None
        self.button = None
        self.options = None
        self.query = StringVar()

        self.setDynamicSearch( self , type )

    def setDynamicSearch( self , root , type ):
        #create frame
        self.frame = Frame( root , height = 100, width = 350 )

        self.query.trace( "w" , lambda name , index , mode , stringVar = self.query: self.callback())

        self.label = Label( self.master , text = "Search By " + type , relief = RAISED )
        self.entry = Entry( self.master , textvariable = self.query, bd = 2 )
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
            self.options = database.searchProteinList(str(self.query.get()))
        else:
            print "callback rna"
            self.options = database.searchRNAList(str(self.query.get()))

        self.options.insert(0, self.query.get())
        self.options = list(set(self.options))
        self.comboBox['values'] = self.options
        self.comboBox.current(0)

    #TODO will liekly need lambda functions or if statements for query search
    def tempSearchCommand( self ):
        print "tempSearch"

        results = database.searchByProtein(self.comboBox.get())

        print results

        self.parent.results = results


    #TODO labeleframe and grid

root = Tk()
gui = GUI(root)
root.mainloop()

#print database.search("1", "experiments")
