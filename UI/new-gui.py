#!usr/bin/python

import Tkinter
from Tkinter import *
import ttk
import tkMessageBox
import database

#TODO labeleframe and grid

class GUI:

    def __init__( self , master ):
        self.master = master
        self.rnaSearch = None
        self.rbpSearch = None
        self.speciesSearch = None
        self.expTypeSearch = None
        self.results = StringVar()

        master.title( "RNA RBP Database" )

        self.searchFrame = self.setSearchFrame( master )
        self.resultsFrame = self.setResultsFrame( master )
        self.results.trace( "w" , lambda name , index , mode , stringVar = self.results: self.callback())

    #need to search by species or protein name
    def setSearchFrame( self , root ):
        #create frame
        searchFrame = LabelFrame( root , text="Search" , padx=5 , pady=5 )

        self.rnaSearch = DynamicSearchFrame( "Filter By RNA Sequence", searchFrame, "rna")
        self.rnaSearch.grid( row = 0 , column = 0 )

        self.rbpSearch = DynamicSearchFrame( "Filter By RBP", searchFrame, "rbp")
        self.rbpSearch.grid( row = 0 , column = 1 )

        self.speciesSearch = DynamicSearchFrame( "Filter By Spieces" , searchFrame, "species" )
        self.speciesSearch.grid( row = 2 , column = 0 )

        self.expTypeSearch = DynamicSearchFrame( "Filter By Experiment Type" , searchFrame, "expType" )
        self.expTypeSearch.grid( row = 2, column = 1 )

        self.searchButton = Tkinter.Button( searchFrame, text = "Search" , height = 3, command = self.tempSearchCommand )
        self.searchButton.grid(row = 4, column = 0, columnspan = 3, sticky = W+E+N+S)

        searchFrame.grid( row = 0, column = 0)

    def setResultsFrame( self , root ):
        resultsFrame = LabelFrame( root , text = "Results" , padx=5, pady=5)
        resultsFrame.grid( row = 0 , column = 1 )

    def tempSearchCommand( self ):
        print "got results"


class DynamicSearchFrame(LabelFrame):

    def __init__( self , text , master , type ):
        LabelFrame.__init__(self , master , text=text)
        self.type = type
        self.entry = None
        self.list = None
        self.query = None

        self.setDynamicSearch( self )

    def setDynamicSearch( self , root ):

        self.filter = Entry( self , textvariable = self.query , bd = 2 )
        self.filter.bind('<KeyRelease>', self.onKeyRelease)
        self.filter.grid(row = 0, column = 0, padx = 5, pady = 5, sticky = W+E+N+S)


        self.list = Listbox(self)
        self.list.bind('<<ListboxSelect>>', self.onListBoxSelect)
        self.list.grid( row = 1, column = 0, columnspan = 5, padx = 5, pady = 5)

        scrollbar = Scrollbar( self )
        scrollbar.grid( row = 1 , column = 1)
        self.list.config( yscrollcommand = scrollbar.set )
        scrollbar.config( command = self.list.yview )

        self.getData( "" )


    def updateListBox( self , data ):
        self.list.delete( 0 , 'end' )

        self.list.insert( 'end' , "Any" )
        #remove any duplicate returns
        data = list(set(data))
        for item in data:
            self.list.insert( 'end' , item )

    def onKeyRelease( self , event ):
        print "onKeyRelease"

        query = event.widget.get()

        self.getData( query )

    def getData( self, query ):

        if self.type == "rbp":
            print "callback rbp"
            self.updateListBox(database.searchProteinList(str(query)))
        elif self.type == "rna":
            print "callback rna"
            self.updateListBox(database.searchRNAList(str(query)))
        elif self.type == "species":
            print "callback species"
            self.updateListBox(database.searchSpeciesList(str(query)))
        else:
            print "callback exptype"
            self.updateListBox(database.searchExpTypeList(str(query)))

    def onListBoxSelect( self , event ):
        print "onListBoxSelect"
        self.query = event.widget.get( event.widget.curselection())

        if self.query == "Any":
            self.query = ''

        print self.query


root = Tk()
gui = GUI(root)
root.mainloop()

#print database.search("1", "experiments")
