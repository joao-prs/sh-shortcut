#!/bin/bash


##### Gera um caractere aleatório usando /dev/urandom e trunca para um único caractere
#random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
#echo "Caractere aleatório: $random_char"



##### o bloco abaixo faz a mesma coisa infinitamente
#while true; do
#    random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
#    echo -n "$random_char"    
#done



##### o bloco abaixo faz loop ate o numero desejado
#valor=20
#for ((i=1; i<=$valor ; i++)); do
#    random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
#    echo -n "$random_char"   
#done






##### esse bloco é legal
while true; do
    # Gera 50 caracteres aleatórios
    caracteres_aleatorios=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 50)

    # Escreve os caracteres e pula para a próxima linha
    echo "$caracteres_aleatorios"

    # Aguarda por um curto período de tempo antes de gerar a próxima linha
    sleep 0.5
done