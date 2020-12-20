#!/bin/bash
set -eu pipefail

echo; echo "[$(date)] $0 job has been started."

cd data/$(date +%F)

# Downloading data
# Escherichia coli str. K-12 substr. BW25113
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/GCA_000750555.1_ASM75055v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/GCA_000750555.1_ASM75055v1_genomic.gff.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/md5checksums.txt


echo; echo "## MD5 checksum"
md5 *.gz
grep "_genomic.fna.gz" *md5checksums.txt
grep "_genomic.gff.gz" *md5checksums.txt

# decompress files with the command `gunzip`:
gunzip *.gz

# Done
echo; echo "[$(date)] $0 has been successfully completed."



