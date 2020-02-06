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
 	echo "adicionar instrumento"
	read instrumento
	echo $instrumento >> $arquivo
}
listar(){
	echo "listar instrumentos"
	cat /home/aluno/Documentos/arquivo-crud.txt

}
buscar(){
	echo "Digite o nome do instrumento para buscar" 
	read instrumento
	grep $instrumento /home/aluno/Documentos/arquivo-crud.txt

}
remover(){
	echo "digite o nome do instrumento para remover"
	
	
}

main #chamada do método




