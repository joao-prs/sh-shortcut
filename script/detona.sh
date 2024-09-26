#!/bin/bash

# Função para exibir a ajuda
mostrar_ajuda() {
    echo "Uso:"
    echo "  $0 -d <PASTA>"
    echo ""
    exit 1
}

# Verifica se há pelo menos 2 argumentos
if [ $# -lt 2 ]; then
    mostrar_ajuda
fi

# Processa os argumentos
while getopts "d:" opt; do
  case ${opt} in
    d )
      PASTA=$OPTARG
      ;;
    \? )
      mostrar_ajuda
      ;;
  esac
done

# Verifica se o diretório existe
if [ -d "$PASTA" ]; then
    echo "O diretório informado é: $PASTA"
    find $PASTA -type f -exec shred -uvz -n9 {} \;
    rm -rf $PASTA
else
    echo "Erro: O diretório $PASTA não existe."
    exit 1
fi
