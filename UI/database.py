import sqlite3
import csv
import requests
import sys
import os

#TODO for many fields, need to seperate by semicolon as there are multiple entries per column

def createDB():
    print "create"
    filename = 'database.db'
    if not os.path.exists(filename):
        connect = sqlite3.connect('database.db')
        cursor = connect.cursor()
        createRBPDB()
        getSequences()

def createPOSTAR():

    connect = sqlite3.connect('database.db')
    cursor = connect.cursor()

    cursor.execute("""DROP TABLE IF EXISTS POSTAR""")
    cursor.execute("""DROP TABLE IF EXISTS POSTAR_SUMMARY""")

    connect.commit()

    cursor.execute("""CREATE TABLE IF NOT EXISTS POSTAR(
        TargetGeneSymbol, TargetGeneID, TargetGeneType,
        TargetGeneExpressionLevel, BindingSiteRecords);""")

    cursor.execute("""CREATE TABLE IF NOT EXISTS POSTAR_SUMMARY(
        Factor, Species, Method, DataAccension, PubmedID, BindingSites);""")

    with open('../DATA/POSTAR.csv', 'rb') as ssPOSTAR:
        drPOSTAR = csv.DictReader(ssPOSTAR)

        to_POSTAR = [(i['Target gene symbol'], i['Target gene ID'], i['Target gene type'],
            i['Target gene exp. level'], i['Binding site records']) for i in drPOSTAR]

    cursor.executemany("""INSERT INTO POSTAR(
        TargetGeneSymbol, TargetGeneID, TargetGeneType,
        TargetGeneExpressionLevel, BindingSiteRecords)
        VALUES(?, ?, ?, ?, ?);""", to_POSTAR)

    with open('../DATA/Summary.csv', 'rb') as ssPOSTARSummary:
        drPOSTARSummnary = csv.DictReader(ssPOSTARSummary)

        to_POSTARSummary = [(i["Factor"], i['Species'], i['Method'], i['Data accession'],
            i['Pubmed ID'], i['Binding sites']) for i in drPOSTARSummnary]

    cursor.executemany("""INSERT INTO POSTAR_SUMMARY(
        Factor, Species, Method, DataAccension, PubmedID, BindingSites)
        VALUES(?, ?, ?, ?, ?, ?);""", to_POSTARSummary)

    connect.commit()

def createRBPDB():
    print "createRBPDB"

    connect = sqlite3.connect('database.db')
    cursor = connect.cursor()

    cursor.execute("DROP TABLE IF EXISTS protExp")
    cursor.execute("DROP TABLE IF EXISTS proteins")
    cursor.execute("DROP TABLE IF EXISTS experiments")
    connect.commit()

    #create the tables
    cursor.execute("CREATE TABLE IF NOT EXISTS protExp(protID, expID, homolog, ID);")
    cursor.execute("""CREATE TABLE IF NOT EXISTS experiments(expID, pubmedID, exptype,
        notes, sequence_motif, flag, falgNotes);""")
    cursor.execute("""CREATE TABLE IF NOT EXISTS proteins(ID, annotID, createDate,
        updateDate, geneName, geneDesc, geneSequence, proteinSequence, species, taxID, domains, flag, flagNotes,
        aliases, PDBIDs, uniProtIDs);""")

    #import data from csv files
    with open('../DATA/RBPDB/protExp.csv', 'rb') as ssProtExp:
        drProtExp = csv.DictReader(ssProtExp)
        to_protExp = [(i['protID'], i['ID'], i['homolog'], i['expID']) for i in drProtExp]

    cursor.executemany("""INSERT INTO protExp(protID, ID, homolog, expID)
        VALUES(?, ?, ?, ?);""", to_protExp)

    with open('../DATA/RBPDB/experiments.csv', 'rb') as ssExperiments:
        drExperiments = csv.DictReader(ssExperiments)
        to_experiments = [(i['expID'], i['pubmedID'], i['exptype'], i['notes'],
            i['sequence_motif'], i['flag'], i['flagNotes'])
            for i in drExperiments]

    cursor.executemany("""
        INSERT INTO experiments(expID, pubmedID, exptype, notes, sequence_motif,
        flag, falgNotes)
        VALUES(?, ?, ?, ?, ?, ?, ?);""", to_experiments)

    with open('../DATA/RBPDB/proteins.csv', 'rb') as ssProteins:
        dr = csv.DictReader(ssProteins)
        #print type(dr)
        to_proteins = [(i['ID'], i['annotID'], i['createDate'], i['updateDate'], i['geneName'],
            i['geneDesc'], "", "", i['species'], i['taxID'], i['domains'], i['flag'],
            i['flagNotes'], i['aliases'], i['PDBIDs'], i['uniProtIDs']) for i in dr]

    cursor.executemany("""
        INSERT INTO proteins(ID, annotID, createDate, updateDate,
        geneName, geneDesc, geneSequence, proteinSequence, species, taxID,
        domains, flag, flagNotes, aliases, PDBIDs, uniProtIDs)
        VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);""", to_proteins)

    connect.commit()
    connect.close()

def getSequences():
    print "getSequences"

    getEnsemblSequence()
    getFlyBaseSequence()
    getUniProtSequence()

def getEnsemblSequence():
    print "getEnsemblSequence"
    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    ensemblStatement = """SELECT proteins.annotID
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" AND
        proteins.annotID LIKE 'ENS%';"""

    cursor.execute(ensemblStatement)
    ensemblRows = cursor.fetchall()

    #for ensemblID in ensemblRows:
    server = "http://rest.ensembl.org"
    ext = "/sequence/id"
    headers={ "Content-Type" : "application/json", "Accept" : "application/json"}

    for i in range(len(ensemblRows)/50+1):
        query = '{ "ids" : ['
        for j in range(0,50):
            print i * 50 + j
            if i * 50 + j < len(ensemblRows):
                query = query + '"'+ensemblRows[j]+'",'
            else:
                break
        query = query[:-1]
        query = query+'] }'

        r = requests.post(server+ext, headers=headers, data=query)

        if not r.ok:
          r.raise_for_status()
          sys.exit()

        decoded = r.json()

        for i in range(len(decoded)):
            ensemblID = decoded[i].get("id")
            sequence = decoded[i].get("seq")
            ensemblID = "'" + ensemblID + "'"
            sequence = "'" + sequence + "'"

            updateStatement = """UPDATE proteins
                SET geneSequence =  """+ sequence + """
                WHERE proteins.annotID = """ + ensemblID + ";"

            cursor.execute(updateStatement)
            connect.commit()

def getFlyBaseSequence():
    print "getFlyBaseSequence"

def getUniProtSequence():
    print "getUniProtSequence"

    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    uniProtStatement = """SELECT proteins.uniProtIDs
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" ;"""

    cursor.execute(uniProtStatement)
    uniProtRows = cursor.fetchall()

    for uniProtID in uniProtRows:
        if not uniProtID  == "\\N":
            uniProtID = uniProtID.split(";")
            for i in range(len(uniProtID)):
                ID = uniProtID[i]
                ID = ID.replace(" ", "")

                url = "http://www.uniprot.org/uniprot/" + ID + ".fasta"
                try:
                    f = requests.get(url)
                except Exception:
                    pass
                text = f.text.encode('ascii','ignore')
                text = text.split('\n')
                text = text[1:-1]
                sequence = ''.join(text)
                sequence = "'" + sequence + "'"
                ID = "'" + ID + "'"

                updateStatement = """UPDATE proteins
                    SET proteinSequence =  """+ sequence + """
                    WHERE proteins.uniProtIDs = """ + ID + ";"

                cursor.execute(updateStatement)
                connect.commit()

def searchRNAList(query):
    print "searchByRNA"

    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    statement = """
        SELECT experiments.sequence_motif
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" AND
        experiments.sequence_motif LIKE """ + query +";"

    cursor.execute(statement)

    rows = cursor.fetchall()

    return rows

def searchSpeciesList(query):
    print "searchBySpecies"

    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    statement = """
        SELECT proteins.species
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" AND
        proteins.species LIKE """ + query +";"

    cursor.execute(statement)

    rows = cursor.fetchall()

    return rows
def searchExpTypeList(query):
    print "searchBySpecies"

    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    statement = """
        SELECT experiments.exptype
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" AND
        experiments.exptype LIKE """ + query +";"

    cursor.execute(statement)

    rows = cursor.fetchall()

    return rows


def searchProteinList(query):
    print "searchByProtein"

    connect = sqlite3.connect('database.db')
    connect.row_factory = lambda cursor, row: row[0]
    cursor = connect.cursor()

    query = "'" + query + "%'"

    statement = """
        SELECT proteins.geneName
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif != "\N" AND
        experiments.sequence_motif != "" AND
        proteins.geneName LIKE """ + query + ";"

    cursor.execute(statement)

    rows = cursor.fetchall()
    return rows

def searchByProtein(query):

    connect = sqlite3.connect('database.db')
    connect.text_factory = str
    cursor = connect.cursor()
    query = "'" + query + "%'"

    statement = """
        SELECT experiments.pubmedID, experiments.exptype, experiments.notes,
        experiments.sequence_motif, proteins.annotID, proteins.geneName,
        proteins.geneDesc, proteins.species, proteins.domains,
        proteins.aliases, proteins.PDBIDs, proteins.uniProtIDs
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1
        AND proteins.geneName LIKE """ + query + ";"

    cursor.execute(statement)

    rows = cursor.fetchall()
    print len(rows)
    return rows

def searchData( rnaQuery , rbpQuery , speciesQuery , expTypeQuery ):
    print "searchData"

    connect = sqlite3.connect('database.db')
    connect.text_factory = str
    cursor = connect.cursor()
    rnaQuery = "'" + rnaQuery + "%'"
    rbpQuery = "'" + rbpQuery + "%'"
    speciesQuery = "'" + speciesQuery + "%'"
    expTypeQuery = "'" + expTypeQuery + "%'"

    statement = """
        SELECT experiments.pubmedID, experiments.exptype, experiments.notes,
        experiments.sequence_motif, proteins.annotID, proteins.geneName,
        proteins.geneDesc, proteins.geneSequence, proteins.proteinSequence,
        proteins.species, proteins.domains, proteins.aliases, proteins.PDBIDs,
        proteins.uniProtIDs
        FROM experiments
        INNER JOIN protExp on experiments.expID = protExp.expID
        INNER JOIN proteins on protExp.protID = proteins.ID
        WHERE experiments.flag != 1 AND proteins.flag != 1 AND
        experiments.sequence_motif LIKE """ + rnaQuery + """
         AND proteins.geneName LIKE """ + rbpQuery + """
         AND proteins.species LIKE """ + speciesQuery + """
         AND experiments.expType LIKE """ + expTypeQuery + ";"

    cursor.execute(statement)

    rows = cursor.fetchall()
    print len(rows)
    return rows

createDB()
#getUniProtSequence()
