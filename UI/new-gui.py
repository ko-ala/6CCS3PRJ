#!usr/bin/python

import Tkinter
from Tkinter import *
import ttk
import tkMessageBox
import database

#TODO add list of queries to bottom above search button?

class GUI:

    def __init__( self , master ):
        self.master = master
        self.searchFrame = None
        self.resultsFrame = None
        self.rnaSearch = None
        self.rbpSearch = None
        self.speciesSearch = None
        self.expTypeSearch = None
        self.results = []

        master.title( "RNA RBP Database" )

        self.setSearchFrame( master )
        self.setResultsFrame( master )
        #self.results.trace( "w" , lambda name , index , mode , stringVar = self.results: self.showResults() )

    #need to search by species or protein name
    def setSearchFrame( self , root ):
        #create frame
        self.searchFrame = LabelFrame( root , text="Search" , padx=5 , pady=5 )

        self.rnaSearch = DynamicSearchFrame( "Filter By RNA Sequence", self.searchFrame, "rna")
        self.rnaSearch.grid( row = 0 , column = 0 )

        self.rbpSearch = DynamicSearchFrame( "Filter By RBP", self.searchFrame, "rbp")
        self.rbpSearch.grid( row = 0 , column = 1 )

        self.speciesSearch = DynamicSearchFrame( "Filter By Spieces" , self.searchFrame, "species" )
        self.speciesSearch.grid( row = 2 , column = 0 )

        self.expTypeSearch = DynamicSearchFrame( "Filter By Experiment Type" , self.searchFrame, "expType" )
        self.expTypeSearch.grid( row = 2, column = 1 )

        self.searchButton = Tkinter.Button( self.searchFrame, text = "Search" , height = 3, command = self.tempSearchCommand )
        self.searchButton.grid(row = 4, column = 0, columnspan = 3, sticky = W+E+N+S)

        self.searchFrame.grid( row = 0, column = 0)

    def setResultsFrame( self , root ):
        self.resultsFrame = LabelFrame( root , text = "Results" , padx=5, pady=5)
        self.resultsFrame.grid( row = 0 , column = 1 , sticky = N )

        self.setTitle()

        #order of result
        #pubmedID, exptype, notes, sequence_motif. secondary_structure
        #annotID, geneName, geneDesc, species, domains, aliases
        #PDBIDs, uniProtIDs


    def setTitle( self ):
        print "setTitles"
        titles = [ "Pubmed ID" , "Experiment Type" , "Experiment Notes" ,
                    "Sequence Motif" , "Secondary Structure" , "Annotation ID" ,
                    "Gene Name" , "Gene Description" , "Species" , "Domains" ,
                    "Aliases" , "PDBID" , "UniPritID"]

        self.titleList = []

        for index, title in enumerate(titles):
            label = Label( self.resultsFrame , text = title , bd = 2 )
            label.bind( "<Button-1>" , self.sortByColumn( index ) )
            label.grid( row = 0 , column = index)

            self.titleList.append(label)

        #pubmedIDLabel = Label( root , text = "Pubmed ID" )
        #pubmedIDLabel.bind( "<Button-1>" , self.sortByColumn( 0 ) )
        #pubmedIDLabel.grid( row = 0 , column = 0 , padx = 5 , pady = 5 , sticky = W+E+N+S )
        #pubmedIDLabel.pack()

    def sortByColumn( self , index ):
        print "sortByColumn"


    def tempSearchCommand( self ):
        print "got results"
        rnaQuery = self.rnaSearch.query
        rbpQuery = self.rbpSearch.query
        speciesQuery = self.speciesSearch.query
        expTypeQuery = self.expTypeSearch.query

        self.results = database.searchData( rnaQuery , rbpQuery , speciesQuery , expTypeQuery )

        self.showResults()

    #TODO Make more presentable also lots of data is very slow
    def showResults( self ):
        print "showResults"

        sizeOfResult = 13
        count = 0
        for result in self.results:
            #print result
            for item in result:
                #print item
                label = Label( self.resultsFrame , text = item)
                label.grid( row = 1 + count/13 , column = count % 13 )
                count = count + 1







class DynamicSearchFrame(LabelFrame):

    def __init__( self , text , master , type ):
        LabelFrame.__init__(self , master , text=text)
        self.type = type
        self.entry = None
        self.listBox = None
        self.query = ""

        self.setDynamicSearch( self )

    def setDynamicSearch( self , root ):

        self.filter = Entry( self , textvariable = self.query , bd = 2 )
        self.filter.bind( '<KeyRelease>' , self.onKeyRelease )
        self.filter.grid( row = 0 , column = 0 , padx = 5 , pady = 5 , sticky = W+E+N+S )


        self.listBox = Listbox( self, selectmode = SINGLE )
        self.listBox.bind( '<<ListboxSelect>>' , self.onListBoxSelect )
        self.listBox.grid( row = 1, column = 0, columnspan = 5, padx = 5, pady = 5)

        scrollbar = Scrollbar( self )
        scrollbar.grid( row = 1 , column = 1)
        self.listBox.config( yscrollcommand = scrollbar.set )
        scrollbar.config( command = self.listBox.yview )

        self.getData( "" )
        #self.listBox.select_set(0)


    def updateListBox( self , data ):
        self.listBox.delete( 0 , 'end' )

        self.listBox.insert( 'end' , "Any" )
        #remove any duplicate returns
        data = list(set(data))
        for item in data:
            self.listBox.insert( 'end' , item )


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
