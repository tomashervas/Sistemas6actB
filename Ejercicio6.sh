numeroArchivos=`ls -l $1/*.txt | wc -l`
rm $1*.txt
echo Se han borrado $numeroArchivos archivos txt
