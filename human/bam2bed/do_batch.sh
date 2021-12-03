for f in ../bam/*.bam
do
	rn=`basename $f | sed "s/.bam//g"`

	if [ ! -f $rn.bed ]
	then
		echo $rn
		qsub -N $rn.bam2bed -v inp=$f,out=$rn bam2bed.pbs
	fi
done
