
import sqlite3
import csv

#TODO for many fields, need to seperate by semicolon as there are multiple entries per column

def createDB():
    print "create"

    connect = sqlite3.connect('test.db')
    cursor = connect.cursor()

    #testing so need to delete tables
    cursor.execute("DROP TABLE IF EXISTS protExp")
    cursor.execute("DROP TABLE IF EXISTS proteins")
    cursor.execute("DROP TABLE IF EXISTS experiments")
    connect.commit()

    #create the tables
    cursor.execute("CREATE TABLE IF NOT EXISTS protExp(protID, expID, homolog, ID);")
    cursor.execute("""CREATE TABLE IF NOT EXISTS experiments(expID, pubmedID, exptype,
                    notes, sequence_motif, secondary_structure, flag, falgNotes);""")
    cursor.execute("""CREATE TABLE IF NOT EXISTS proteins(ID, annotID, createDate,
                    updateDate, geneName, geneDesc, species, taxID, domains, flag,
                    flagNotes, aliases, PDBIDs, uniProtIDs);""")

    #import data from csv files
    with open('../DATA/RBPDB/protExp.csv', 'rb') as ssProtExp:
        drProtExp = csv.DictReader(ssProtExp)
        to_protExp = [(i['protID'], i['ID'], i['homolog'], i['expID']) for i in drProtExp]
    cursor.executemany("INSERT INTO protExp(protID, ID, homolog, expID) VALUES(?, ?, ?, ?);", to_protExp)

    with open('../DATA/RBPDB/experiments.csv', 'rb') as ssExperiments:
        drExperiments = csv.DictReader(ssExperiments)
        to_experiments = [(i['expID'], i['pubmedID'], i['exptype'], i['notes'],
                            i['sequence_motif'], i['secondary_structure'],
                            i['flag'], i['flagNotes']) for i in drExperiments]

    cursor.executemany("""
                        INSERT INTO experiments(expID, pubmedID, exptype, notes,
                        sequence_motif, secondary_structure, flag, falgNotes)
                        VALUES(?, ?, ?, ?, ?, ?, ?, ?);""", to_experiments)

    with open('../DATA/RBPDB/proteins.csv', 'rb') as fin:
        dr = csv.DictReader(fin)
        to_db = [(i['ID'], i['annotID'], i['createDate'], i['updateDate'], i['geneName'],
                i['geneDesc'], i['species'], i['taxID'], i['domains'], i['flag'],
                i['flagNotes'], i['aliases'], i['PDBIDs'], i['uniProtIDs']) for i in dr]

    cursor.executemany("""
                        INSERT INTO proteins(ID, annotID, createDate, updateDate,
                        geneName, geneDesc, species, taxID, domains, flag, flagNotes,
                        aliases, PDBIDs, uniProtIDs)
                        VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);""", to_db)

    connect.commit()
    connect.close()

def searchRNAList(query):
    print "searchByRNA"

    connect = sqlite3.connect('test.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    cursor.execute("""
                    SELECT experiments.sequence_motif
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND
                    experiments.sequence_motif != "\N" AND
                    experiments.sequence_motif != "" AND
                    experiments.sequence_motif LIKE """ + query +";")

    rows = cursor.fetchall()

    return rows

def searchSpeciesList(query):
    print "searchBySpecies"

    connect = sqlite3.connect('test.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    cursor.execute("""
                    SELECT proteins.species
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND
                    experiments.sequence_motif != "\N" AND
                    experiments.sequence_motif != "" AND
                    proteins.species LIKE """ + query +";")

    rows = cursor.fetchall()

    return rows
def searchExpTypeList(query):
    print "searchBySpecies"

    connect = sqlite3.connect('test.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    cursor.execute("""
                    SELECT experiments.exptype
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND
                    experiments.sequence_motif != "\N" AND
                    experiments.sequence_motif != "" AND
                    experiments.exptype LIKE """ + query +";")

    rows = cursor.fetchall()

    return rows


def searchProteinList(query):
    print "searchByProtein"

    connect = sqlite3.connect('test.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    cursor.execute("""
                    SELECT proteins.geneName
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND
                    experiments.sequence_motif != "\N" AND
                    experiments.sequence_motif != "" AND
                    proteins.geneName LIKE """ + query + ";")

    rows = cursor.fetchall()
    return rows

def searchByProtein(query):

    connect = sqlite3.connect('test.db')
    connect.text_factory = str
    cursor = connect.cursor()
    query = "'" + query + "%'"

    print "query"
    print query

    cursor.execute("""
                    SELECT experiments.pubmedID, experiments.exptype, experiments.notes,
                    experiments.sequence_motif, experiments.secondary_structure,
                    proteins.annotID, proteins.geneName, proteins.geneDesc,
                    proteins.species, proteins.domains, proteins.aliases,
                    proteins.PDBIDs, proteins.uniProtIDs
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND proteins.geneName LIKE """ + query + ";")

    rows = cursor.fetchall()
    print len(rows)
    return rows

def searchData( rnaQuery , rbpQuery , speciesQuery , expTypeQuery ):
    print "searchData"

    connect = sqlite3.connect('test.db')
    connect.text_factory = str
    cursor = connect.cursor()
    rnaQuery = "'" + rnaQuery + "%'"
    rbpQuery = "'" + rbpQuery + "%'"
    speciesQuery = "'" + speciesQuery + "%'"
    expTypeQuery = "'" + expTypeQuery + "%'"

    cursor.execute("""
                    SELECT experiments.pubmedID, experiments.exptype, experiments.notes,
                    experiments.sequence_motif, experiments.secondary_structure,
                    proteins.annotID, proteins.geneName, proteins.geneDesc,
                    proteins.species, proteins.domains, proteins.aliases,
                    proteins.PDBIDs, proteins.uniProtIDs
                    FROM experiments
                    INNER JOIN protExp on experiments.expID = protExp.expID
                    INNER JOIN proteins on protExp.protID = proteins.ID
                    WHERE experiments.flag != 1 AND proteins.flag != 1 AND
                    experiments.sequence_motif LIKE """ + rnaQuery +
                    " AND proteins.geneName LIKE " + rbpQuery +
                    " AND proteins.species LIKE " + speciesQuery +
                    "AND experiments.expType LIKE " + expTypeQuery + ";")

    rows = cursor.fetchall()
    print len(rows)
    return rows




def search(query, type):
    #print "Searching"

    connect = sqlite3.connect('test.db')
    cursor = connect.cursor()

    #print query
    query = "'" + query + "'"
    #print query

    if type == "experiments":
        #print "experiments"

        cursor.execute("""
                        SELECT *
                        FROM experiments as expe
                        INNER JOIN protExp as protExp on expe.expID = protExp.expID
                        INNER JOIN proteins as prot on protExp.protID = prot.ID
                        WHERE expe.flag != 1 AND prot.flag != 1 AND expe.expID = """ + query +";")
    else:
        #print "proteins"
        cursor.execute("""
                        SELECT *
                        FROM proteins as prot
                        INNER JOIN protExp as protExp on prot.ID = protExp.protID
                        INNER JOIN experiments as expe on protExp.expID = expe.expID
                        WHERE expe.flag != 1 AND prot.flag != 1 AND prot.ID =""" + query +";")
    connect.commit()
    rows = cursor.fetchall()

    #print len(rows)
    for row in rows:
        print row

def getList():
    print "getList"


# test function to see if database exists
def get_posts():
    connect = sqlite3.connect('test.db')
    cursor = connect.cursor()
    with connect:
        cursor.execute("SELECT * FROM protExp")
        print(cursor.fetchall())
    #connect.commit()

created = False
connect = sqlite3.connect('test.db')
cursor = connect.cursor()

print "hello world"

if not created:
    createDB()
