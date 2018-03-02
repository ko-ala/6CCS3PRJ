
import sqlite3
import csv
created = False

connect = sqlite3.connect('test.db')

cursor = connect.cursor()

print "hello world"

if not created:

    #testing so need to delete tables
    cursor.execute("DROP TABLE IF EXISTS protEXP")
    cursor.execute("DROP TABLE IF EXISTS proteins")
    cursor.execute("DROP TABLE IF EXISTS experiements")
    connect.commit()

    #create the tables
    cursor.execute("CREATE TABLE IF NOT EXISTS protExp(protID, expID, homolog, ID);")
    cursor.execute("CREATE TABLE IF NOT EXISTS experiments(expID, pubmedID, exptype, notes, sequence_motif, secondary_structure, flag, falgNotes);")
    cursor.execute("CREATE TABLE IF NOT EXISTS proteins(ID, annotID, createDate, updateDate, geneName, geneDesc, species, taxID, domains, flag, flagNotes, aliases, PDBIDs, uniProtIDs);")

    #import data from csv files
    with open('../DATA/RBPDB/protExp.csv', 'rb') as ssProtExp:
        drProtExp = csv.DictReader(ssProtExp)
        to_protExp = [(i['protID'], i['expID'], i['homolog'], i['ID']) for i in drProtExp]
    cursor.executemany("INSERT INTO protExp(protID, expID, homolog, ID) VALUES(?, ?, ?, ?);", to_protExp)

    with open('../DATA/RBPDB/experiments.csv', 'rb') as ssExperiments:
        drExperiments = csv.DictReader(ssExperiments)
        to_experiments = [(i['expID'], i['pubmedID'], i['exptype'], i['notes'], i['sequence_motif'], i['secondary_structure'], i['flag'], i['flagNotes']) for i in drExperiments]
    cursor.executemany("INSERT INTO experiments(expID, pubmedID, exptype, notes, sequence_motif, secondary_structure, flag, falgNotes) VALUES(?, ?, ?, ?, ?, ?, ?, ?);", to_experiments)

    with open('../DATA/RBPDB/proteins.csv', 'rb') as fin:
        dr = csv.DictReader(fin)
        to_db = [(i['ID'], i['annotID'], i['createDate'], i['updateDate'], i['geneName'], i['geneDesc'], i['species'], i['taxID'], i['domains'], i['flag'], i['flagNotes'], i['aliases'], i['PDBIDs'], i['uniProtIDs']) for i in dr]

    cursor.executemany("INSERT INTO proteins(ID, annotID, createDate, updateDate, geneName, geneDesc, species, taxID, domains, flag, flagNotes, aliases, PDBIDs, uniProtIDs) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);", to_db)

    connect.commit()
    connect.close()

    #cursor.execute("DROP TABLE IF EXISTS proteins")
    #connect.commit()
    #cursor.execute("CREATE TABLE proteins(ID, annotID, createDate, updateDate, geneName, geneDesc, species, taxID, domains, flag, flagNotes, aliases, PDBIDs, uniProtIDs);")
    #cursor.execute("CREATE TABLE proteins(col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14);")
