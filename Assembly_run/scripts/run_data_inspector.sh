#!/bin/bash
set -e
set -u
#set -o pipefail

cd data/$(date +%F)

echo; echo "* Inspecting and Manipulating Text Data with Unix Tools"

FNA=GCA_000750555.1_ASM75055v1_genomic.fna
GFF=GCA_000750555.1_ASM75055v1_genomic.gff

echo; echo "* FASTA header lines begin with the > character."
grep "^>" $FNA

echo; echo "* Inspecting Data with Head and Tail"
head -n 10 $GFF
tail -n 3 $GFF

echo; echo "* Using grep, cut, sort, uniq to summarize columns of data"
#grep -v "^#" $GFF | cut -f3 | sort | uniq -c
# pipe these results to sort -rn to show these counts in order from most frequent to least
grep -v "^#" $GFF | cut -f3 | sort | uniq -c | sort -rn
