#Deep Learning of Protein and RNA Binding Affinities

This project is a proof of concept attempting to show that a large set of RNA and protein binding data can be collected, organized, and analyzed for suitable application to a deep learning algorithm the predict binding affinities. The application constructed to meet these goals will require a unqiue biological data set formed from exisiting RNA and protein interaction databases. The application will also have a user interface to provide users an intuitive way to search through the project's dataset. The inteface will also provide the sequences needed for deep learning algorithms. 

##Getting Started

###Prerequisites

This project was built with Python 2.7 and will require python to be installed on the device to run. Python 2.7 can be found from the following link:
```
https://www.python.org/downloads/release/python-2713/
```
In additional, any dependencies not already installed will need to be installed by a package manager such as pip.

###installation

To install the program, open the device's console application within the Code directory of the application and run
```
python UI.py
```
Although the database.db file should have been part of the package when retrieved, if it is not in the directory then application will then take a few minutes to source the data from online databases. If an error occurs, please check that the local csv files are in the correct directory. proteins.csv, protExp.csv, and experiments.csv should be in the DATA/RBPDB/ directory while POSTAR.csv should be in the DATA/POSTAR directory.

If everything runs smoothly, the application should now be running and the database can be searched through. 

##Built With 
*[Python TKinter](https://docs.python.org/2/library/tkinter.html) - The GUI toolkit used
*[SQLite3](https://docs.python.org/3/library/sqlite3.html) - The database manger used

##Authors
* **Ethan Ko** 

##Contributors
* *Dr Kathleen Steinhöfel* - *Project Supervisor*
* *Mr Rayan Alnamnakany*

**Acknowledgements
Thank you to Dr Kathleen Steinhöfel for all the support she provided over the course of this project. The topic is very difficult and without her support this would not have been achievable. Likewise to Mr Rayan Alnamnakany, his support was instrumental in helping this project achieve what it has. 
