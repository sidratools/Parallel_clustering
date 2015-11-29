#!/bin/bash
if [ $# -ne 2 ]; then
    echo -e "Use:"
    echo -e "\t First argument: Input file from the BLAST program output"
    echo -e "\t Second argument: Number of CPU's or multi-threads should be used"
    echo -e " \t \t Example: ./run.sh my_file.BLAST.out 32"
    exit 1
fi

file=$1
export file;
total=`cat $file | wc -l`


echo -e "##########################################################################################################################################"
echo -e "Your Input file has" $total "sequences" 

awk '!x[$1,$2]++ ' $file | sort  -k 1,2 -t " " | 
awk '{ print $1,"\t",$2,"\t",$3,"\t",$4,"\t",$5,"\t",$6,"\t",$7,"\t",$8,"\t",$9,"\t",$10,"\t",$11,"\t",$12} '  > test.txt

no_duplicate=`cat ./test.txt | wc -l`
COUNT=$(expr $total - $no_duplicate)
echo -e $COUNT "Duplicates found from the provided input file"
time -p ./cluster_sg ./test.txt $2

echo -e "##########################################################################################################################################"
