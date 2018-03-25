#!usr/bin/python

import Tkinter
from Tkinter import *
import ttk
import tkMessageBox
import webbrowser
import database

#TODO visualize both things

#TODO add list of queries to bottom above search button?

class GUI:

    def __init__( self , master ):
        self.master = master
        self.searchFrame = None
        self.resultsFrame = None
        self.resultsCanvas = None
        self.resultsDisplay = None
        self.rnaSearch = None
        self.rbpSearch = None
        self.speciesSearch = None
        self.expTypeSearch = None
        self.sortOptions = None
        self.titles = [ "Pubmed ID" , "Experiment Type" , "Experiment Notes" ,
                    "Sequence Motif" , "Annotation ID" ,
                    "Gene Name" , "Gene Description" , "Species" , "Domains" ,
                    "Aliases" , "PDBID" , "UniProtID"]
        self.methodDict = {}
        self.toolTips = []
        self.titleList = []
        self.pageNum = IntVar()
        self.totalPages = 0
        self.numPerPage = 20

        self.back2Button = None
        self.back1Button = None
        self.curPageLabel = None
        self.forward1Button = None
        self.forward2Button = None

        self.numLabel = None

        self.results = []
        self.resultLabels = []

        master.title( "RNA RBP Database" )

        self.setSearchFrame( master )
        self.setResultsFrame( master )

    #TODO search by database?
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

        self.searchFrame.grid( row = 0, column = 0 )

    def setResultsFrame( self , root ):

        self.resultsFrame = LabelFrame( root , text = "Results" , width = 500)
        self.resultsFrame.config( font = ( "Calibri" , 12 ))
        self.resultsFrame.grid( row = 0 , column = 1 , sticky = N )

        self.resultsCanvas = Canvas(self.resultsFrame, width = 500, height = 500)
        self.resultsCanvas.grid( row = 0 , column = 0, sticky = N+S+E+W)

        self.resultsDisplay = Frame(self.resultsCanvas)
        self.resultsDisplay.grid(row =0, column = 0)

        self.xscrollbar = Scrollbar(self.resultsFrame, orient=HORIZONTAL, command=self.resultsCanvas.xview)
        self.xscrollbar.grid(row = 1, column = 0, sticky = E + W)

        self.yscrollbar = Scrollbar(self.resultsFrame, orient=VERTICAL, command=self.resultsCanvas.yview)
        self.yscrollbar.grid(row = 0, column = 1, rowspan = 2, sticky = N + S)

        self.resultsCanvas.configure(xscrollcommand=self.xscrollbar.set,
            yscrollcommand=self.yscrollbar.set,
            scrollregion = (0,0,500,500))
        self.resultsCanvas.grid_columnconfigure(0, weight=1)
        self.resultsCanvas.grid_rowconfigure(0, weight=1)

        self.resultsCanvas.create_window((0,0),window=self.resultsDisplay,anchor='nw')
        self.resultsDisplay.bind("<Configure>",self.scrollFunction)

        self.pageFrame = Frame( self.resultsFrame )
        self.pageFrame.grid( row = 2 , column = 0 , sticky = S)

        pageLabel = Label( self.pageFrame , text = "Viewing results " , padx=5, pady=5)
        pageLabel.grid( row = 0 , column = 0 , sticky = S + W)

        self.back2Button = Tkinter.Button(self.pageFrame , text = "<<" , command = lambda:self.changePage(-2))
        self.back2Button.grid( row = 0 , column = 1 , sticky = S + W)

        self.back1Button = Tkinter.Button(self.pageFrame , text = "<" , command = lambda:self.changePage(-1))
        self.back1Button.grid( row = 0 , column = 2 , sticky = S + W)

        self.forward1Button = Tkinter.Button(self.pageFrame , text = ">" , command = lambda:self.changePage(1))
        self.forward1Button.grid( row = 0 , column = 4 , sticky = S + W)

        self.forward2Button = Tkinter.Button(self.pageFrame , text = ">>" , command = lambda:self.changePage(2))
        self.forward2Button.grid( row = 0 , column = 5 , sticky = S + W)

        self.pageNum.set(0)
        self.pageNum.trace("w", self.deactivateButtons())

        self.curPageLabel = Label(self.pageFrame , textvariable = self.pageNum)
        self.curPageLabel.grid( row = 0, column = 3, sticky = S + W)

        self.setTitle()

    def scrollFunction( self, canvas):
        self.resultsCanvas.configure(scrollregion=self.resultsCanvas.bbox("all"))

    def deactivateButtons( self ):
        print "deactivateButton"
        if self.pageNum.get() - 2 < 0:
            self.back2Button.configure(state = 'disabled')
        else:
            self.back2Button.configure(state = 'normal')

        if self.pageNum.get() - 1 < 0:
            self.back1Button.configure(state = 'disabled')
        else:
            self.back1Button.configure(state = 'normal')
        if self.pageNum.get() + 1 > self.totalPages:
            self.forward1Button.configure(state = 'disabled')
        else:
            self.forward1Button.configure(state = 'normal')
        if self.pageNum.get() + 2 > self.totalPages:
            self.forward2Button.configure(state = 'disabled')
        else:
            self.forward2Button.configure(state = 'normal')

    def changePage( self , numPages ):
        print "changePage"
        print numPages
        self.pageNum.set(self.pageNum.get() + numPages)

        print self.pageNum.get()

        self.showResults()

    def setTitle( self ):
        print "setTitles"

        self.titleList = []
        self.setToolTips()

        self.numLabel = Label( self.resultsDisplay , text = "No." , bd = 10 )
        self.numLabel.grid( row = 0 , column = 0 )
        self.numLabel.config( font = ( "Calibri" , 12 ))

        for index, title in enumerate(self.titles):
            label = Label( self.resultsDisplay , text = title , bd = 10 )
            label.config( font = ( "Calibri" , 12 ))
            label.grid( row = 0 , column = index + 1 )
            label.bind( "<Button-1>" , lambda event, arg = index: self.sortByColumn( event , arg ) )
            labelToolTip = CreateToolTip(label,"test")
            self.titleList.append(label)

    def setToolTips( self ):
        print "setToolTips"

    def sortByColumn( self , event , index ):
        print "sortByColumn"
        self.results.sort(key=lambda tup: tup[index])
        self.showResults()

    def searchCommand( self ):
        print "got results"
        rnaQuery = self.rnaSearch.query
        rbpQuery = self.rbpSearch.query
        speciesQuery = self.speciesSearch.query
        expTypeQuery = self.expTypeSearch.query

        self.results = database.searchData( rnaQuery , rbpQuery , speciesQuery , expTypeQuery )

        self.totalPages = len(self.results) / self.numPerPage

        self.showResults()

    #TODO Make more presentable also lots of data is very slow
    #paginate to 20?
    #TODO need to remake every search?
    def showResults( self ):
        print "showResults"

        startIndex = ( self.pageNum.get() ) * self.numPerPage
        print startIndex
        sizeOfResult = len(self.titles) + 1

        for label in self.resultLabels:
            label.grid_forget()

        del self.resultLabels[:]

        if (len(self.results)) - startIndex < self.numPerPage:
            self.numPerPage = len(self.results)

        totalItems = sizeOfResult * self.numPerPage
        countItems = 0
        while countItems < totalItems:
            if (countItems % sizeOfResult) == 0:
                label = Label( self.resultsDisplay , text = str((countItems/sizeOfResult) + 1))
                self.resultLabels.append(label)
                label.grid( row = (countItems/sizeOfResult) + 1 , column = 0 )
                label.config( font = ( "Calibri" , 12 ))
                countItems = countItems + 1
            else:
                #TODO add binds
                for item in self.results[startIndex + (countItems/sizeOfResult)]:
                #for i in range(startIndex, startIndex + 1):
                    label = Label( self.resultsDisplay , text = item)
                    self.resultLabels.append(label)
                    label.grid( row = 1 + countItems / sizeOfResult , column = countItems % sizeOfResult )
                    label.bind("<Button-1>", lambda event,
                        arg = (countItems / sizeOfResult, ( countItems % sizeOfResult ) - 1 ):
                        self.clickedResult( event , arg ) )
                    label.config( font = ( "Calibri" , 12 ))
                    countItems = countItems + 1

        self.deactivateButtons()

    def clickedResult( self, event, arg):
        print arg
        dataSelected = self.results[arg[0]][arg[1]]
        dataType = self.titles[arg[1]]
        print dataType
        print dataSelected

        if dataType == self.titles[0]:
            self.PubMedIDEvent(dataSelected)

    def PubMedIDEvent( self , pubmedID):
        url = "https://www.ncbi.nlm.nih.gov/pubmed/" + pubmedID
        webbrowser.open_new(url)

    def clickExpTypeEvent( self , expType ):
        print expType


class DynamicSearchFrame(LabelFrame):

    def __init__( self , text , master , type ):
        LabelFrame.__init__(self , master , text=text)
        self.type = type
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
        scrollbar.grid( row = 1 , column = 1, sticky = N+S)
        self.listBox.config( yscrollcommand = scrollbar.set )
        scrollbar.config( command = self.listBox.yview )

        self.getData( "" )


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

        if num == ():
            num = 0
        else:
            num = int(num[0])

        self.query = event.widget.get( num )

        if self.query == "Any":
            self.query = ''


#copied from https://stackoverflow.com/questions/3221956/how-do-i-display-tooltips-in-tkinter
class CreateToolTip(object):
    """
    create a tooltip for a given widget
    """
    def __init__(self, widget, text='widget info'):
        self.waittime = 500     #miliseconds
        self.wraplength = 180   #pixels
        self.widget = widget
        self.text = text
        self.widget.bind("<Enter>", self.enter)
        self.widget.bind("<Leave>", self.leave)
        self.widget.bind("<ButtonPress>", self.leave)
        self.id = None
        self.tw = None

    def enter(self, event=None):
        self.schedule()

    def leave(self, event=None):
        self.unschedule()
        self.hidetip()

    def schedule(self):
        self.unschedule()
        self.id = self.widget.after(self.waittime, self.showtip)

    def unschedule(self):
        id = self.id
        self.id = None
        if id:
            self.widget.after_cancel(id)

    def showtip(self, event=None):
        x = y = 0
        x, y, cx, cy = self.widget.bbox("insert")
        x += self.widget.winfo_rootx() + 25
        y += self.widget.winfo_rooty() + 20
        # creates a toplevel window
        self.tw = Tkinter.Toplevel(self.widget)
        # Leaves only the label and removes the app window
        self.tw.wm_overrideredirect(True)
        self.tw.wm_geometry("+%d+%d" % (x, y))
        label = Tkinter.Label(self.tw, text=self.text, justify='left',
                       background="#ffffff", relief='solid', borderwidth=1,
                       wraplength = self.wraplength)
        label.pack(ipadx=1)

    def hidetip(self):
        tw = self.tw
        self.tw= None
        if tw:
            tw.destroy()

root = Tk()
gui = GUI(root)
root.mainloop()
