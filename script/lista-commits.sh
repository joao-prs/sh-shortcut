#!/bin/bash

#   o script a seguir tem como finalidade ver os commits feitos
#   por um usuario, e mostrar a hash de tamanho customizavel, por
#   padrão é 10, mas pode ser alterado.

read -p "usuario: " _user
_hash_size=10

git log --author="${_user}" --pretty=format:"%H %s" | while read line; do
    hash=$(echo "$line" | awk '{print $1}' | sed -E "s/^(.{$_hash_size}).*/\1/; s/ (.*)/ \1/")
    msg=$(echo "$line" | cut -d' ' -f2-)
    echo "$hash  $msg"
done