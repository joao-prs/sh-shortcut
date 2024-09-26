#!/bin/bash

# Função para exibir a ajuda
mostrar_ajuda() {
    echo "Uso:"
    echo "  $0 -d <diretorio>"
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
      DIRETORIO=$OPTARG
      ;;
    \? )
      mostrar_ajuda
      ;;
  esac
done

# Verifica se o diretório existe
if [ -d "$DIRETORIO" ]; then
    echo "O diretório informado é: $DIRETORIO"
    find $DIRETORIO -type f -exec shred -uvz -n6 {} \;
    rm -rf $DIRETORIO
else
    echo "Erro: O diretório $DIRETORIO não existe."
    exit 1
fi
