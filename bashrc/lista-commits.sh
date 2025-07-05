#!/bin/bash

#---------
#  .bashrc
#---------


commits() {
    if [ "$1" == "--help" ]; then
        echo "HELP:"
        echo "commits <usuario>"
    fi
	if [ -n "$1" ]; then
        _user="$1"
    else
        read -p "usuario: " _user
    fi
    _hash_size=15;
    git log --author="${_user}" --pretty=format:"%H %s" | while read line; do
        hash=$(echo "$line" | awk '{print $1}' | sed -E "s/^(.{$_hash_size}).*/\1/; s/ (.*)/ \1/")
        msg=$(echo "$line" | cut -d' ' -f2-)
        echo -e "\033[1;96m$hash\033[0m  $msg"
    done
	if
}




#---------
#  .zshrc
#---------

commits() {
    if [ -n "$1" ]; then
        _user="$1"
        _hash_size=15;
        git log --author="${_user}" --pretty=format:"%H %s" | while read line; do
            hash=$(echo "$line" | awk '{print $1}' | sed -E "s/^(.{$_hash_size}).*/\1/; s/ (.*)/ \1/")
            msg=$(echo "$line" | cut -d' ' -f2-)
            echo "\033[1;96m$hash\033[0m  $msg"
        done;
    else
        echo "HELP: commits <usuario>"
    fi
}