# IntroBio2020_at
### 解析のために


Atsuki Tomita
2020-12-20


---
- [HowToAnalysis](#HowToAnalysis)


---




##### HowToAnalysis

From folder download to analysis

```
wget https://github.com/Tom1Ru/IntroBio2020_at/blob/main/Assembly_run.zip
unzip Assembly_run.zip

cd assembly_run/
(bash scripts/run_all.sh &) >& log.$(date +%F).txt
tail -f log.$(date +%F).txt

```
