sample=''
target=''
PCR_sequence=''
CRISPResso -r1  $sample.fq  --plot_window_size 10 -w 10 -wc -10 -q 30  -s 20 --base_editor_output -g $target -a $PCR_sequence
