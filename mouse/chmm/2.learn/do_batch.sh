for s in 10 12 15
do
	echo ChromHMM $s stats...
	qsub -N ChromHMM_learn.$s -v n=$s learn.pbs
done
