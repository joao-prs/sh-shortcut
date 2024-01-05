#!/bin/bash

retorno_a=false
if [ "$retorno_a" = true ]; then
    echo "VVVVVVVVV"
else
    echo "FFFFFFFFF"
fi


### checa a existencia de diretorio

pasta_stats="/home/ubuntu/stats"
if [ -d "$pasta_stats" ]; then
    echo "A pasta $pasta_stats já existe. Faça algo aqui."
else
    echo "A pasta $pasta_stats não existe. Criando a pasta..."
    mkdir "$pasta_stats"
    echo "Pasta criada. Faça algo aqui."
fi
