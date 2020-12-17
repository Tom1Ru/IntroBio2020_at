Atsuki Tomita
Last Update: 2020-12-17

---

# *E. coli* Genome information

Project started 2020-11-03.  

A complete genome of "CP009273.1 Escherichia coli BW25113" was retrieved from the NCBI FTP site. 

- [StartAnalysis](#StartAnalysis)
- [project directory structures](#project-directory-structures)
- [scripts](#scripts)
- [data](#data)
- [results](#analysis)

----------
### StartAnalysis
```
cd assembly/
(bash scripts/run_all.sh &) >& log.$(date +%F).txt
tail -f log.$(date +%F).txt
```




---
## project directory structures
```
tommymac@tomitaatsumotonoMacBook-Pro ncbi_GenBank_assembly % find . | sort

.
./.DS_Store
./README.md
./analysis
./analysis/.DS_Store
./analysis/2020-11-16
./analysis/2020-11-16/output.txt
./analysis/2020-12-17
./analysis/output.txt
./data
./data/.DS_Store
./data/2020-12-17
./data/2020-12-17/GCA_000750555.1_ASM75055v1_genomic.fna
./data/2020-12-17/GCA_000750555.1_ASM75055v1_genomic.fna.gz
./data/2020-12-17/GCA_000750555.1_ASM75055v1_genomic.gff
./data/2020-12-17/GCA_000750555.1_ASM75055v1_genomic.gff.gz
./data/2020-12-17/md5checksums.txt
./log.2020-12-17.txt
./scripts
./scripts/run_all.sh
./scripts/run_data_downloader.sh
./scripts/run_data_inspector.sh

```

----------

## scripts

scripts/run_all実行で, 日付ファイル, logファイル が作成され, scripts/run_data_downloader.sh, scripts/run_data_inspector.shが実行される.
```
(bash scripts/run_all.sh &) >& log.$(date +%F).txt
```

----------

## data

CP009273.1 Escherichia coli BW25113, complete genome 
genome-build-accession NCBI_Assembly:GCA_000750555.1
```
# Downloading data
# Escherichia coli str. K-12 substr. BW25113

wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/GCA_000750555.1_ASM75055v1_genomic.fna.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/GCA_000750555.1_ASM75055v1_genomic.gff.gz
wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/000/750/555/GCA_000750555.1_ASM75055v1/md5checksums.txt

```

### MD5 checksum
```
MD5 (GCA_000750555.1_ASM75055v1_genomic.fna.gz) = 3fe88314fac8a0dfd3bbd3ec1504532a
MD5 (/GCA_000750555.1_ASM75055v1_genomic.gff.gz) = 4e9a623639be813ccc4bc96ae58c1eaa
```

----------

## results

```
cat analysis/output.txt

Escherichia coli BW25113, complete genome

4374 CDS
4303 gene
 353 repeat_region
 206 pseudogene
 177 exon
  85 tRNA
  48 mobile_genetic_element
  47 STS
  43 antisense_RNA
  32 sequence_feature
  22 rRNA
  20 ncRNA
   3 pseudogenic_tRNA
   2 tmRNA
   1 region
   1 origin_of_replication
   1 SRP_RNA
   1 RNase_P_RNA
```
----------

## reproducibility

```
diff analysis/output.txt analysis/2020-11-03/output.txt
diff analysis/output.txt analysis/2020-11-10/output.txt
```

### environments

1)
```
% uname -a
Darwin tomitaatsumotonoMacBook-Pro.local 19.6.0 Darwin Kernel Version 19.6.0: Mon Aug 31 22:12:52 PDT 2020; root:xnu-6153.141.2~1/RELEASE_X86_64 x86_64

% sw_vers
ProductName:    Mac OS X
ProductVersion:    10.15.7
BuildVersion:    19H2
```

2)

----------

## references
- [DATA SCIENCE FOR BIOINFORMATICS [DS2] 2020](https://github.com/haruosuz/introBI/tree/master/2020)
- [NCBI Genome List](https://github.com/haruosuz/introBI/blob/master/2020/CaseStudy.md#ncbi-genome-list)
- [NCBI Genome Information by Organism](https://www.ncbi.nlm.nih.gov/genome/browse/#!/overview)
----------


