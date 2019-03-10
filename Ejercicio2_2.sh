suma=0
contador=0
while read line; do
	contador=$((contador+1))
	i=`echo $line | awk '{print $2}'`
	suma=$(($i+$suma))
done < precipitaciones.txt
echo "scale=2; $suma/$contador" | bc