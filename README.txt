This program is part of Scalable Parallel programming developed by 
Dr.Andrey Ptitsyn and Nagarajan Kathiresan from 
Sidra Medical and Research Center, 
Al Dafna, Doha, Qatar,Doha
www.sidra.org/

Here, we provided the following files: 

[naga@hpclogin2 github]$ tree 
.
|-- README.txt    /* README FILE */
|-- cluster_sg    /* x86_64 pre-compiled Scalable Parallel programming binary */ 
|-- run.sh        /* Example run.sh script */
|-- sample.txt    /* Example input file */

0 directories, 4 files

The user should run the program in the following way:

./run.sh sample.txt 32

Where,
	./run.sh is the run_script
	sample.txt is the input file from the BLAST output program
	32 is the number of CPU's or multi-threads used

Once the program executed successfully, the following files will be generated:
  
.
|-- README.txt
|-- _table.txt		/* Output file from the Scalable Parallel program */
|-- _taxonmap.txt	/* Output file from the Scalable Parallel program */
|-- cluster_sg
|-- run.sh
|-- sample.txt
`-- test.txt		/* Intermediate file without duplicate */

0 directories, 7 files


for any clarifications:

nkathiresan@sidra.org

