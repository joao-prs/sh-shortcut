#!/bin/bash


funcao_1() {
    # Gera um caractere aleatório usando /dev/urandom e trunca para um único caractere
    random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
    echo "Caractere aleatório: $random_char"
}

funcao_2() {
    # o bloco abaixo faz a mesma coisa infinitamente
    while true; do
        random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
        echo -n "$random_char"    
    done
}

funcao_3() {
    # o bloco abaixo faz loop ate o numero desejado
    read -p "quantidade: " valor
    echo -e ""
    for ((i=1; i<=$valor ; i++)); do
        random_char=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c1)
        echo -n "$random_char"   
    done
    echo -e "\n"
}

funcao_4() {
    read -p "quantidade: " valor
    #echo -e "\n\n"

    while true; do
        # Gera 50 caracteres aleatórios
        
        caracteres_aleatorios=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c $valor)

        # Escreve os caracteres e pula para a próxima linha
        echo "$caracteres_aleatorios"

        # Aguarda por um curto período de tempo antes de gerar a próxima linha
        sleep 0.5
    done
}

echo -e "1...uma letra aleatória"
echo -e "2...infinitas letras aleatórias ["Ctrl + C" p/ cancelar]"
echo -e "3...quantidade definida de caracteres geradas"
echo -e "4...quantidade definida de caracteres por linha (infinitas linhas) \n"
read -p "escolhar um numero: " -n1 opcao
echo -e "\n"

case "$opcao" in
    1)
        funcao_1
        ;;
    2)
        funcao_2
        ;;
    3)
        funcao_3
        ;;
    4)
        funcao_4
        ;;
    *)
        echo "Opção inválida"
        ;;
esac
