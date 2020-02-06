#!/bin/bash

while :; do
	echo "1- Adicionar: "
	echo "2- listar: "

	read numero
	if test [ $numero -eq 0 ];
	then
	    // redirecionar saída para o arquivo de texto
	elif [ $numero -lt 0 ]
	then
	    echo "Número negativo"
	elif [ $numero -eq 0 ]
	then
	    echo "Número é zero"
	else
	    echo "O valor fornecido não é um número!"
	fi	
done



