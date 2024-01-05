#!/bin/bash

# Definir códigos de escape ANSI para cores
vermelho='\033[0;31m'
verde='\033[0;32m'
amarelo='\033[0;33m'
reset='\033[0m'

# Imprimir texto colorido
echo -e "Texto em ${vermelho}vermelho${reset}"
echo -e "Texto em ${verde}verde${reset}"
echo -e "Texto em ${amarelo}amarelo${reset}"