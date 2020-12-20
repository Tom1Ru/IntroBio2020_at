Atsuki Tomita
Last Update: 2020-12-20

---

# *E. coli* Genome information


A complete genome of "CP009273.1 Escherichia coli BW25113" was retrieved from the NCBI FTP site. 

- [StartAnalysis](#StartAnalysis)
- [project directory structures](#project-directory-structures)
- [scripts](#scripts)
- [data](#data)
- [results](#analysis)

----------
### StartAnalysis
```
wget https://github.com/Tom1Ru/IntroBio2020_at/blob/main/Assembly_run.zip
unzip Assembly_run.zip

cd assembly_run/
(bash scripts/run_all.sh &) >& log.$(date +%F).txt
tail -f log.$(date +%F).txt
```






---
## project directory structures
```
tommymac@tomitaatsumotonoMacBook-Pro Assembly_run % find . | sort

.
./.DS_Store
./README.md
./analysis
./analysis/.DS_Store
./data
./data/.DS_Store
./scripts
./scripts/.DS_Store
./scripts/run_all.sh
./scripts/run_data_downloader.sh
./scripts/run_data_inspector.sh

```

----------

## scripts

scripts/run_all実行で解析が開始されます
日付ファイル, logファイル が作成され,run_all経由で scripts/run_data_downloader.sh, scripts/run_data_inspector.shが実行される.
```
(bash scripts/run_all.sh &) >& log.$(date +%F).txt
```

----------

## data

使用するデータ:
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
データ整合性確認
```
% md5sum *.fna.gz
% md5sum *.gff.gz

MD5 (GCA_000750555.1_ASM75055v1_genomic.fna.gz) = 3fe88314fac8a0dfd3bbd3ec1504532a
MD5 (/GCA_000750555.1_ASM75055v1_genomic.gff.gz) = 4e9a623639be813ccc4bc96ae58c1eaa
```

----------

## results

```
% cat analysis/output.txt


* Using grep, cut, sort, uniq to summarize columns of data
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

出力ファイルの整合性確認.
下記のようにdiffで判断
Use the diff command to check the results.
```
diff analysis/output.txt analysis/2020-12-16/output.txt
diff analysis/output.txt analysis/2020-12-17/output.txt
```

### environments
テスト環境情報.
以下の環境で動作を確認済み
1)
MacBoookPro(自分)
```
% uname -a
Darwin tomitaatsumotonoMacBook-Pro.local 19.6.0 
Darwin Kernel Version 19.6.0: Mon Aug 31 22:12:52 PDT 2020; root:xnu-6153.141.2~1/RELEASE_X86_64 x86_64

% sw_vers
ProductName:    Mac OS X
ProductVersion:    10.15.7
BuildVersion:    19H2
```

2)
MacBookPro(友人)
```
% uname -a
Darwin MuyangnoMacBook-Pro.local 19.6.0 
Darwin Kernel Version 19.6.0: Thu Oct 29 22:56:45 PDT 2020; root:xnu-6153.141.2.2~1/RELEASE_X86_64 x86_64

% sw_vers
ProductName: Mac OS X
ProductVersion: 10.15.7
BuildVersion: 19H15
```

3)
MacBoookPro(自分)(別日, 2回目)
```
% uname -a
Darwin tomitaatsumotonoMacBook-Pro.local 19.6.0 
Darwin Kernel Version 19.6.0: Mon Aug 31 22:12:52 PDT 2020; root:xnu-6153.141.2~1/RELEASE_X86_64 x86_64

% sw_vers
ProductName:    Mac OS X
ProductVersion:    10.15.7
BuildVersion:    19H2

```


```

----------

## references

- [DATA SCIENCE FOR BIOINFORMATICS [DS2] 2020](https://github.com/haruosuz/introBI/tree/master/2020)
- [NCBI Genome List](https://github.com/haruosuz/introBI/blob/master/2020/CaseStudy.md#ncbi-genome-list)
- [NCBI Genome Information by Organism](https://www.ncbi.nlm.nih.gov/genome/browse/#!/overview)
----------


