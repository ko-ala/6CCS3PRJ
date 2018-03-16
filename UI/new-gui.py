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
        self.resultsCanvas = None
        self.rnaSearch = None
        self.rbpSearch = None
        self.speciesSearch = None
        self.expTypeSearch = None
        self.sortOptions = None
        self.titles = [ "Pubmed ID" , "Experiment Type" , "Experiment Notes" ,
                    "Sequence Motif" , "Secondary Structure" , "Annotation ID" ,
                    "Gene Name" , "Gene Description" , "Species" , "Domains" ,
                    "Aliases" , "PDBID" , "UniPritID"]
        self.results = []
        self.resultLabels = []

        master.title( "RNA RBP Database" )

        self.setSearchFrame( master )
        self.setResultsFrame( master )
        #self.results.trace( "w" , lambda name , index , mode , stringVar = self.results: self.showResults() )

    #TODO search by database?

    #need to search by species or protein name
    def setSearchFrame( self , root ):
        #create frame
        self.searchFrame = LabelFrame( root , text="Search Bar" , padx=5 , pady=5 )
        self.searchFrame.config( font = ( "Calibri" , 16 ))

        self.rnaSearch = DynamicSearchFrame( "Filter By RNA Sequence", self.searchFrame, "rna")
        self.rnaSearch.grid( row = 0 , column = 0 )

        self.rbpSearch = DynamicSearchFrame( "Filter By RBP", self.searchFrame, "rbp")
        self.rbpSearch.grid( row = 0 , column = 1 )

        self.speciesSearch = DynamicSearchFrame( "Filter By Spieces" , self.searchFrame, "species" )
        self.speciesSearch.grid( row = 2 , column = 0 )

        self.expTypeSearch = DynamicSearchFrame( "Filter By Experiment Type" , self.searchFrame, "expType" )
        self.expTypeSearch.grid( row = 2, column = 1 )

        self.searchButton = Tkinter.Button( self.searchFrame, text = "Search" , command = self.searchCommand )
        self.searchButton.grid(row = 4, column = 0, columnspan = 3, sticky = W+E+N+S)
        self.searchButton.config( font = ( "Calibri" , 12 ))

        self.searchFrame.grid( row = 0, column = 0)

    def setResultsFrame( self , root ):

        #TODO do I need the Canvas?
        self.resultsCanvas = Canvas( root , borderwidth = 0 )
        self.resultsCanvas.grid( row = 0 , column = 1 , sticky = N )


        self.resultsFrame = LabelFrame( self.resultsCanvas , text = "Results" , padx=5, pady=5)
        self.resultsFrame.config( font = ( "Calibri" , 12 ))
        self.resultsFrame.grid( row = 1 , column = 0 , sticky = N )

        #TODO Sort results

        """
        self.sortOptions = ttk.Combobox( self.resultsFrame , textvariable = self.titles)
        self.sortOptions.config( font = ( "Calibri" , 12 ))
        self.sortOptions.grid( row = 0 , column = 0 , sticky = N + S + W + E )

        self.sortButton = Tkinter.Button(self.resultsFrame , text = "Sort" , command = self.sortByOption)
        self.sortButton.config( font = ( "Calibri" , 12 ))
        self.sortButton.grid( row = 0 , column = 1, sticky = N + S + W + E )
        """
        scrollbar = Scrollbar( self.resultsCanvas , orient = "horizontal" , command = self.resultsCanvas.xview )
        scrollbar.grid( row = 1 , column = 0 , sticky = S)
        self.resultsCanvas.config( xscrollcommand = scrollbar.set )

        self.setTitle()

    def setTitle( self ):
        print "setTitles"

        self.titleList = []

        numLabel = Label( self.resultsFrame , text = "No." , bd = 10 )
        numLabel.grid( row = 0 , column = 0 )
        numLabel.config( font = ( "Calibri" , 12 ))
        #numLabel.bind( "<Button-1>" , self.testClick( "does this work" ))

        for index, title in enumerate(self.titles):
            label = Label( self.resultsFrame , text = title , bd = 10 )
            label.config( font = ( "Calibri" , 12 ))
            label.grid( row = 0 , column = index + 1 )
            #label.bind( "<Button-1>" , self.sortByColumn( index ) )

            self.titleList.append(label)

    def testClick( self , index ):
        print index

    def sortByOption( self ):
        print "sortByOption"

        option = ""

    def sortByColumn( self , index ):
        print "sortByColumn"

        numResult = 0
        mapOfSort = []
        listOfItems = []

        for result in self.results:
            #count = 0
            #for item in result:
            #    if count == index:
            #        mapOfSort.append('end' , )
            #    count = count + 1
            mapOfSort.append( ( numResult , result[index] ) )

            numResult = numResult + 1

        print mapOfSort

        mapOfSort.sort(key=lambda tup: tup[1])

        print mapOfSort

        #self.showResults()


    def searchCommand( self ):
        print "got results"
        rnaQuery = self.rnaSearch.query
        rbpQuery = self.rbpSearch.query
        speciesQuery = self.speciesSearch.query
        expTypeQuery = self.expTypeSearch.query

        self.results = database.searchData( rnaQuery , rbpQuery , speciesQuery , expTypeQuery )

        self.showResults()

    #TODO Make more presentable also lots of data is very slow
    #paginate to 20?
    #TODO need to remake every search?
    def showResults( self ):
        print "showResults"

        for label in self.resultLabels:
            label.grid_forget()

        del self.resultLabels[:]

        numPerPage = 20
        sizeOfResult = 14

        if len(self.results) < numPerPage:
            numPerPage = len(self.results)

        totalItems = sizeOfResult * numPerPage
        countItems = 0
        #for result in self.results:
        while countItems < totalItems:
            if (countItems % sizeOfResult) == 0:
                #print str((countItems/sizeOfResult) + 1)
                label = Label( self.resultsFrame , text = str((countItems/sizeOfResult) + 1))
                self.resultLabels.append(label)
                label.grid( row = (countItems/sizeOfResult) + 1 , column = 0 )
                label.config( font = ( "Calibri" , 12 ))
                countItems = countItems + 1
            else:
                for item in self.results[countItems/sizeOfResult]:
                    #print countItems
                    #print item
                    label = Label( self.resultsFrame , text = item)
                    self.resultLabels.append(label)
                    label.grid( row = 1 + countItems / sizeOfResult , column = countItems % sizeOfResult )
                    label.config( font = ( "Calibri" , 12 ))
                    countItems = countItems + 1


class DynamicSearchFrame(LabelFrame):

    def __init__( self , text , master , type ):
        LabelFrame.__init__(self , master , text=text)
        self.type = type
        self.canvas = None
        self.entry = None
        self.listBox = None
        self.query = ""

        self.config( font = ( "Calibri" , 12 ))

        self.setDynamicSearch( self )

    def setDynamicSearch( self , root ):

        self.filter = Entry( self , textvariable = self.query , bd = 2 )
        self.filter.config( font = ( "Calibri" , 12 ))
        self.filter.bind( '<KeyRelease>' , self.onKeyRelease )
        self.filter.grid( row = 0 , column = 0 , padx = 5 , pady = 5 , sticky = W+E+N+S )

        self.listBox = Listbox( self, selectmode = SINGLE )
        self.listBox.config( font = ( "Calibri" , 12 ))
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

        num = event.widget.curselection()
        #print num
        if num == ():
            num = 0
        else:
            num = int(num[0])
        #print num
        self.query = event.widget.get( num )

        if self.query == "Any":
            self.query = ''

        print self.query


root = Tk()
gui = GUI(root)
root.mainloop()

#print database.search("1", "experiments")
