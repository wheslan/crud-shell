#!/bin/bash

arquivo="/home/aluno/Documentos/arquivo-crud.txt"

main(){
	while :; do
	echo "1- adicionar: "
	echo "2- listar:    "
	echo "3- buscar:    "
	echo "4- remover:    "

	read entrada
	case $entrada in
		1) adicionar;;
		2) listar;;
		3) buscar;;
		4) remover;;
		

  	esac	
	done
}

adicionar(){
 	#echo Adicionar Instrumento
	#read instrumento
	#$instrumento >> $arquivo
}

main #chamada do método




