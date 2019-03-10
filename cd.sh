actualPwd=`pwd`
cd $1
destinoPwd=`pwd`
cd $actualPwd
if [[ $actualPwd == $destinoPwd ]]; then
	echo El directorio no existe
else
	numeroArchivos=`ls -l $1/*.txt | wc -l`
	rm $1/*.txt
	echo Se han borrado $numeroArchivos archivos txt

fi
