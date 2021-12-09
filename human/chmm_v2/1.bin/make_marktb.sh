for f in bed/*.bed
do
	bn=`basename $f`
	mk=`echo $bn | cut -d "-" -f 1`
	
	echo -e H1'\t'$mk'\t'$bn >> cellmarkfiletable.txt
	

done

