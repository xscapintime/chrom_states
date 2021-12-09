cat meta_select.tsv | awk 'NR>2 {print line}{line=$0} END{print line}' > tmp


cat tmp | while read i
do

	tmp=($i)
	id=${tmp[0]}
	link=${tmp[4]}
	acc=${tmp[3]}

	echo $id $acc
	#echo $link
	#echo $acc

	wget -c $link -O $id.$acc.bam --no-check-certificate
done
