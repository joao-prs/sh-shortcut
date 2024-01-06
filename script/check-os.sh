#!/bin/bash

# Verifica se o sistema operacional é Arch Linux
if [ -f "/etc/arch-release" ]; then
    echo "Você está usando Arch Linux."
    # Coloque os comandos específicos para Arch Linux aqui

# Verifica se o sistema operacional é Ubuntu
elif [ -f "/etc/lsb-release" ]; then
    echo "Você está usando Ubuntu."
    # Coloque os comandos específicos para Ubuntu aqui

# Verifica se o sistema operacional é Fedora
elif [ -f "/etc/fedora-release" || -f "/etc/redhat-release" ]; then
    echo "Você está usando Fedora."
    # Coloque os comandos específicos para Fedora aqui

# Se nenhum dos sistemas for detectado
else
    echo "Sistema operacional não suportado ou não reconhecido."
fi
