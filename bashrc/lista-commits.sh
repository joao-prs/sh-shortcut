#!/bin/bash

#-------------------
#  .bashrc ou .zshrc
#-------------------

list_commit_by_user() {
    if [ -n "$1" ]; then
        _user="$1"
    else
        read -p "usuario: " _user
    fi
    _hash_size=15;

    git log --author="${_user}" --pretty=format:"%H %s" | while read line; do
        hash=$(echo "$line" | awk '{print $1}' | sed -E "s/^(.{$_hash_size}).*/\1/; s/ (.*)/ \1/")
        msg=$(echo "$line" | cut -d' ' -f2-)
        echo "$hash  $msg"
    done;
}
alias list_commit="list_commit_by_user"