i=0
j=0
while read linea; do
	resto=`expr $linea % 2`
	if [[ $resto -eq 0 ]]; then
		arrayPares[$i]=$linea
		i=$(($i+1))
	else
		arrayImpares[$j]=$linea
		j=$(($j+1))
	fi
done < numeros.txt
echo La lista de números pares es:
echo ${arrayPares[@]}
echo y son ${#arrayPares[@]} elementos
echo 
echo La lista de números impares es:
echo ${arrayImpares[@]}
echo y son ${#arrayImpares[@]} elementos
