i=0
j=0
contadorL=0
contadorW=0
while read linea; do
	sistema=`echo $linea | awk '{print $2}'`
	proceso=`echo $linea | awk '{print $3}'`
	if [[ $sistema = Linux ]]; then
		contadorL=$(($proceso+$contadorL))
		i=$(($i+1))
	else
		contadorW=$(($proceso+$contadorW))
		j=$(($j+1))
	fi
done < listado.txt
echo Hay $i usuarios de Linux y suman $contadorL procesos
echo Hay $j usuarios de Windows y suman $contadorW procesos