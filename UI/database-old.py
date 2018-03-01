#!/usr/bin/python

import MySQLdb

dbCreated = True

db1 = MySQLdb.connect( host = "localhost" , user = "root" , passwd = "7ijb7p;Z" )
cursor = db1.cursor()
sq1 = 'CREATE DATABASE db'
if not dbCreated:
    create()

def create():
    try:
        cursor.execute(sq1)
    except:
        print "database exists"

    print "hello world"

def search( type , query ):
    return "test"
