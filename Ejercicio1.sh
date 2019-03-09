
while read line; do
	mkdir $line
	for i in `seq 1 $1`; do
		mkdir $line/personal$i
	done
done < nombres.txt