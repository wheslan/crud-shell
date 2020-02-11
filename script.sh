#!/bin/bash

arquivo="/home/aluno/Documentos/arquivo-crud.txt" # guarda arquivo de texto

main(){
	
	while :; do  # loop infinito 
	echo ""
	echo "1- adicionar instrumento: "
	echo "2- listar:    "
	echo "3- buscar:    "
	echo "4- remover:    "
	echo "5- finalizar "

	read opcao  # escolha um numero para chamar determinado método
	case $opcao in # menu switch case 
		1) adicionar;;
		2) listar;;
		3) buscar;;
		4) remover;;
		5)echo "Finalizado" ;exit;;
		

  	esac	#fechamento do switch
	done    #fechamento do while
}

adicionar(){
	echo "adicione instrumento"
	read instrumento
 	echo "adicione uma cor"
	read cor
	echo "adicione marca"
	read marca
	echo "adicione tamanho"
	read tamanho
	echo "Instrumento: $instrumento | Cor: $cor | marca: $marca | tamanho(cm): $tamanho" >> $arquivo
	
}
listar(){
	echo "listar instrumentos"
	cat $arquivo

}
buscar(){
	echo "Digite o nome do instrumento para buscar" 
	read instrumento
	grep $instrumento $arquivo

}
remover(){
	echo "digite o nome do instrumento para remover" 
	read instrumento
	sed -i /$instrumento/d $arquivo
}

main #chamada do método




