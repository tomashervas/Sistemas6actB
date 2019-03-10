while read line; do
	awk '{sum += $2} END {print sum/10}'
done < precipitaciones.txt
