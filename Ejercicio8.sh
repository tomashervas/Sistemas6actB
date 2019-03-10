for ip in `seq 1 254`; do
	ping -c3 192.168.0.$ip > pingPrueba.txt
	paquete=`cat pingPrueba.txt | tail -2 |head -1 | awk '{print $4}'`
	if [[ $paquete -eq 0 ]]; then
		echo 192.168.0.$ip no esta ocupada la ip
	else
		echo 192.168.0.$ip ping ok
	fi
done
