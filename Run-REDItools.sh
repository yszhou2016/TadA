sample=293-1-LFE0568_L1
index=~/data/ensemble-104/
python2 ~/software/REDItools-1.2.1/reditools/REDItoolDenovo.py  -o  $sample.REDItools   -i  $sample.sorted.bam  -f   $index/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa   -t  3  -e -d -l -U [AG,TC,CT,GA] -p -u -m 60 -T 5-5 -W  -n  0.0
