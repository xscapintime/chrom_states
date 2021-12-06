for f in ../2.learn*/*/*_segments.bed
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/_segments.bed//g"`

	qsub -N overlapEnrich.$rn -v inp=$f,out=$rn overlap_enrichment.pbs
done
