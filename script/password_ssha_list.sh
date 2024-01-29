#!/bin/bash
amarelo='\033[0;33m'
reset='\033[0m'
echo "-----------------"
echo -e "digite uma ${amarelo}senha${reset}:"
echo "-----------------"
read mypass
PASSWORD=$mypass
SALT="$(openssl rand -base64 3)"
SHA1=$(printf "$PASSWORD$SALT" | openssl dgst -binary -sha1 | sed 's#$#'"$SALT"'#' | base64)

echo "------------------"
echo -e "hash da sua ${amarelo}senha${reset}:"
echo "------------------"
printf "{SSHA}$SHA1\n"

# pegue a hash e envie para