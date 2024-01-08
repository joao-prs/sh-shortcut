#!/bin/bash

echo "-----------------"
echo "digite uma senha:"
echo "-----------------"
read mypass
PASSWORD=$mypass
SALT="$(openssl rand -base64 3)"
SHA1=$(printf "$PASSWORD$SALT" | openssl dgst -binary -sha1 | sed 's#$#'"$SALT"'#' | base64)
printf "{SSHA}$SHA1\n"

# pegue a hash e envie para