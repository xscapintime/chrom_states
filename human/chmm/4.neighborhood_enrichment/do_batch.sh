for f in ../2.learn*/*/*_segments.bed
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/_segments.bed//g"`

	for b in anchor/*.bed
	do
		tn=`basename $b | sed "s/.anchor.bed//g"`
	
		echo $rn $tn NeighborhoodEnrichment
		qsub -N neighborhoodEnrich.$rn.$tn -v inp=$f,out=$rn,ac=$b,te=$tn neighborhood_enrichment.pbs

	done
done
