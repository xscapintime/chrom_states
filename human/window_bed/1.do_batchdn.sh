for f in ../bam2bed/*.bed
do
        rn=`basename $f | sed 's/.bed//g'`

	echo $rn 3 direction slop +200
	qsub -N $rn.slop -v inp=$f,out=$rn get_dnstrm.pbs

        # extending sequencing reads by 200 bp in the 3' direction
        #bedtools slop -i $f -g hg38.chrom.sizes -l 0 -r 200 -s > $rn.slop.bed

done
