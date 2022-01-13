cat coremark.txt | while read i
do
	#ls ../../bam2bed/$i*.bed
	ln -s /data3/liyang/chrom_states/human/window_bed/$i*.bed bed/
done
