sample=293-1-LFE0568_L1
index=~/data/ensemble-104/
hisat2 -p 20   -q -x   $index/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa  -1   $sample/$sample\_1.gz  -2   $sample/$sample\_2.gz  -S  $sample.sam
samtools view -b  -q 30  -Su  $sample.sam | samtools sort  -@ 20 - > $sample.sorted.bam
python2 ~/software/REDItools-1.2.1/reditools/REDItoolDenovo.py  -o  $sample.REDItools   -i  $sample.sorted.bam  -f   $index/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa   -t  3  -e -d -l -U [AG,TC,CT,GA] -p -u -m 60 -T 5-5 -W  -n  0.0
