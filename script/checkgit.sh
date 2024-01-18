#!/bin/bash

# Caminho para o diretório do repositório
caminho_repositorio="$(pwd)"

# Mude para o diretório do repositório
cd "$caminho_repositorio" || exit 1

# Execute o comando git status e verifique a saída
if git status --porcelain | grep -q .; then
    echo "Existem arquivos alterados no repositório."
else
    echo "O repositório está limpo, sem alterações."
fi
