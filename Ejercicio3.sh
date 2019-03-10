
max=`cat precipitaciones.txt | wc -l`
linea=1
semana=( lunes martes miercoles jueves viernes sabado domingo)
while [ $linea -le $max ]; do
	indice=$(($linea%7))
	indice=$(($indice-1))
	i=`cat precipitaciones.txt | head -${linea} | tail -1 | awk '{print $2}'`
	if [[ $i -eq  0 ]]; then
		echo 'el' ${semana[$indice]} 'no llovio'
	fi
	linea=$(($linea+1))
done
