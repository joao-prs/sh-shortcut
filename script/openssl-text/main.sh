#!/bin/bash

echo "Escolha uma opção:"
echo "1 - Encriptar"
echo "2 - Desencriptar"
read -p "Opção: " opcao

read -s -p "Digite a senha: " senha
echo ""

if [[ "$opcao" == "1" ]]; then
    echo "1 - Digitar texto"
    echo "2 - Usar arquivo"
    read -p "Escolha a origem do texto: " tipo

    if [[ "$tipo" == "1" ]]; then
        read -p "Digite o texto para encriptar: " texto
        echo -n "$texto" | openssl enc -a -e -aes-256-cbc -salt -pbkdf2 -iter 100000 -pass pass:"$senha"
        echo
    elif [[ "$tipo" == "2" ]]; then
        read -p "Caminho do arquivo: " caminho
        if [[ -f "$caminho" ]]; then
            openssl enc -a -e -aes-256-cbc -salt -pbkdf2 -pass pass:"$senha" -in "$caminho"
        else
            echo "Arquivo não encontrado."
        fi
    else
        echo "Opção inválida."
    fi

elif [[ "$opcao" == "2" ]]; then
    echo "1 - Colar texto encriptado"
    echo "2 - Usar arquivo"
    read -p "Escolha a fonte do texto: " tipo

    if [[ "$tipo" == "1" ]]; then
        echo "Cole o texto encriptado (termine com CTRL+D):"
        texto=$(</dev/stdin)
        echo -n "$texto" | openssl enc -aes-256-cbc -a -d -salt -pbkdf2 -pass pass:"$senha"
        echo
    elif [[ "$tipo" == "2" ]]; then
        read -p "Caminho do arquivo encriptado: " caminho
        if [[ -f "$caminho" ]]; then
            openssl enc -a -d -aes-256-cbc -salt -pbkdf2 -pass pass:"$senha" -in "$caminho"
        else
            echo "Arquivo não encontrado."
        fi
    else
        echo "Opção inválida."
    fi

else
    echo "Opção inválida."
fi
