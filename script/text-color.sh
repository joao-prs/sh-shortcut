#!/bin/bash

# Definir códigos de escape ANSI para cores
vermelho='\033[0;31m'
verde='\033[0;32m'
amarelo='\033[0;33m'
b_vermelho='\033[41m'
reset='\033[0m' # retornar a cor original

# Imprimir texto colorido
echo -e "Texto em ${vermelho}vermelho${reset}"
echo -e "Texto em ${verde}verde${reset}"
echo -e "Texto em ${amarelo}amarelo${reset}"
echo -e "Texto em ${amarelo}${b_vermelho}amarelo com fundo vermelho${reset}"

# Color		                 Foreground		 Background
# Default		                  \033[39m		\033[49m	
# Black		                    \033[30m		\033[40m	
# Dark red		                \033[31m		\033[41m	
# Dark green		              \033[32m		\033[42m	
# Dark yellow (Orange-ish)		\033[33m		\033[43m	
# Dark blue		                \033[34m		\033[44m	
# Dark magenta	              \033[35m		\033[45m	
# Dark cyan		                \033[36m		\033[46m	
# Light gray		              \033[37m		\033[47m	
# Dark gray		                \033[90m		\033[100m	
# Red		                      \033[91m		\033[101m	
# Green		                    \033[92m		\033[101m	
# Orange		                  \033[93m		\033[103m	
# Blue		                    \033[94m		\033[104m	
# Magenta		                  \033[95m		\033[105m	
# Cyan		                    \033[96m		\033[106m	
# White		                    \033[97m		\033[107m