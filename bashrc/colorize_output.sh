#!/bin/bash

#-------------------
#  .bashrc ou .zshrc
#-------------------

#   isso pode rodar antes de qualquer comando, ele atribui cor
#   a palavras especificas para uma leitura mais clara. para
#   usa-lo, coloque-o no iniciar de seu bashrc, e antes de qualquer
#   outro comando, execute "c" e em seguida o comando desejado,
#   ele deverá atribuir cores nas palavras especificas abaixo.

# updt  -- amarelo
# add   -- verde
# feat  -- verde
# del   -- vermelho

colorize_output() {
    "$@" | sed \
        -e 's/\bupdt\b/\o033[1;33m&\o033[0m/g' \
        -e 's/\badd\b/\o033[1;32m&\o033[0m/g' \
        -e 's/\bfeat\b/\o033[1;32m&\o033[0m/g' \
        -e 's/\bdel\b/\o033[1;31m&\o033[0m/g'
}
alias c="colorize_output"