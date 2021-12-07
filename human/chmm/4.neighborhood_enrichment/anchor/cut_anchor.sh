for f in ../../3.overlap_enrichment/coord/*.bed
do
	rn=`basename $f | sed "s/.bed//g"`
	
	cat $f | cut -f 1,2,7 > $rn.anchor.bed
done
