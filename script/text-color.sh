#!/bin/bash

# Definir códigos de escape ANSI para cores

reset='\033[0m' # retornar a cor original

# Foreground
Black="\033[30m"
Dark_red="\033[31m"
Dark_green="\033[32m"
Dark_yellow="\033[33m"
Dark_blue="\033[34m"
Dark_magenta="\033[35m"
Dark_cyan="\033[36m"
Light_gray="\033[37m"

Default="\033[39m"

Dark_gray="\033[90m"
Red="\033[91m"
Green="\033[92m"
Orange="\033[93m"
Blue="\033[94m"
Magenta="\033[95m"
Cyan="\033[96m"
White="\033[97m"	

l_Light_gray="\033[37m"
l_Dark_gray="\033[1;90m"
l_Red="\033[1;91m"
l_Green="\033[1;92m"
l_Orange="\033[1;93m"
l_Blue="\033[1;94m"
l_Magenta="\033[1;95m"
l_Cyan="\033[1;96m"
l_White="\033[1;97m"	

echo -e "color ${Black}Black${reset}"
echo -e "color ${Dark_red}Dark_red${reset}"
echo -e "color ${Dark_green}Dark_green${reset}"
echo -e "color ${Dark_yellow}Dark_yellow${reset}"
echo -e "color ${Dark_blue}Dark_blue${reset}"
echo -e "color ${Dark_magenta}Dark_magenta${reset}"
echo -e "color ${Dark_cyan}Dark_cyan${reset}"
echo -e "color ${Dark_gray}Dark_gray${reset}"

echo -e "color ${Light_gray}Light_gray${reset}"
echo -e "color ${Red}Red${reset}"
echo -e "color ${Green}Green${reset}"
echo -e "color ${Orange}Orange${reset}"
echo -e "color ${Blue}Blue${reset}"
echo -e "color ${Magenta}Magenta${reset}"
echo -e "color ${Cyan}Cyan${reset}"
echo -e "color ${White}White${reset}"

echo -e "color ${l_Light_gray}Light Light_gray${reset}"
echo -e "color ${l_Red}Light Red${reset}"
echo -e "color ${l_Green}Light Green${reset}"
echo -e "color ${l_Orange}Light Orange${reset}"
echo -e "color ${l_Blue}Light Blue${reset}"
echo -e "color ${l_Magenta}Light Magenta${reset}"
echo -e "color ${l_Cyan}Light Cyan${reset}"
echo -e "color ${l_White}Light White${reset}"

# Background
b_Black="\033[40m"
b_Dark_red="\033[41m"
b_Dark_green="\033[42m"
b_Dark_yellow="\033[43m"
b_Dark_blue="\033[44m"
b_Dark_magenta="\033[45m"
b_Dark_cyan="\033[46m"
b_Light_gray="\033[47m"
b_Dark_gray="\033[100m"
b_Red="\033[101m"
b_Green="\033[101m"
b_Orange="\033[103m"
b_Blue="\033[104m"
b_Magenta="\033[105m"
b_Cyan="\033[106m"
b_White="\033[107m"

echo -e "color ${b_Black}Black${reset}"
echo -e "color ${b_Dark_red}Dark_red${reset}"
echo -e "color ${b_Dark_green}Dark_green${reset}"
echo -e "color ${b_Dark_yellow}Dark_yellow${reset}"
echo -e "color ${b_Dark_blue}Dark_blue${reset}"
echo -e "color ${b_Dark_magenta}Dark_magenta${reset}"
echo -e "color ${b_Dark_cyan}Dark_cyan${reset}"
echo -e "color ${b_Dark_gray}Dark_gray${reset}"

echo -e "color ${b_Light_gray}Light_gray${reset}"
echo -e "color ${b_Red}Red${reset}"
echo -e "color ${b_Green}Green${reset}"
echo -e "color ${b_Orange}Orange${reset}"
echo -e "color ${b_Blue}Blue${reset}"
echo -e "color ${b_Magenta}Magenta${reset}"
echo -e "color ${b_Cyan}Cyan${reset}"
echo -e "color ${b_White}White${reset}"


# Color		                 Foreground		 Background

# Black		                   \033[30m		\033[40m	
# Dark red		               \033[31m		\033[41m	
# Dark green		           \033[32m		\033[42m	
# Dark yellow (Orange-ish)	   \033[33m		\033[43m	
# Dark blue		               \033[34m		\033[44m	
# Dark magenta	               \033[35m		\033[45m	
# Dark cyan		               \033[36m		\033[46m	
# Light gray		           \033[37m		\033[47m	
# * Default		               \033[39m		\033[49m	
# Dark gray		               \033[90m		\033[100m	
# Red		                   \033[91m		\033[101m	
# Green		                   \033[92m		\033[101m	
# Orange		               \033[93m		\033[103m	
# Blue		                   \033[94m		\033[104m	
# Magenta		               \033[95m		\033[105m	
# Cyan		                   \033[96m		\033[106m	
# White		                   \033[97m		\033[107m


# Color 	                    Foreground 	Backgroun

# Black 	                    \033[30m 	\033[40m
# Red    	                    \033[31m 	\033[41m
# Green 	                    \033[32m 	\033[42m
# Orange 	                    \033[33m 	\033[43m
# Blue 	                        \033[34m 	\033[44m
# Magenta 	                    \033[35m 	\033[45m
# Cyan 	                        \033[36m 	\033[46m
# Light gray                	\033[37m 	\033[47m
# * default 	                \033[39m 	\033[49m

# Color  	        Backgroun

# Dark gray 	    \033[100m
# Light red 	    \033[101m
# Light green 	    \033[102m
# Yellow 	        \033[103m
# Light blue 	    \033[104m
# Light purple      \033[105m
# Teal 	            \033[106m
# White 	        \033[107m
