for f in ../../bam2bed/*.bed
do
	bn=`basename $f`
	mk=`echo $bn | cut -d "_" -f 1 | cut -d "-" -f 1`
	
	echo -e H1'\t'$mk'\t'$f >> cellmarkfiletable.txt
	

done

