# IntroBio2020_at
This was created in the IntroBio2020 class on SFC.(DATA SCIENCE FOR BIOINFORMATICS [DS2], バイオインフォマティクスのデータサイエンス[DS2])

This is a simple analysis to learn the Reproducible and Robust datascience.

---


- [Assembly E. coli Genome(NCBIからゲノムをダウンロード, 遺伝子数やrRNA, tRNAの数などをカウント)](#E. coli Assembly)


---


## E. coli Assembly
 ```
wget https://github.com/Tom1Ru/IntroBio2020_at/blob/main/Assembly_run.zip
unzip Assembly_run.zip
cd Assembly_run/
(bash scripts/run.sh &) >& log.$(date +%F).txt
tail -f log.$(date +%F).txt
```



---
