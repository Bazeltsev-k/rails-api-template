#!/bin/bash

env_file=".env"
comment="#"
while read -r line
do
    [[ ! -z "$line" ]] && [[ ! $line == $comment* ]] && export $line
done < "$env_file"

if [ -z ${1+x} ]; then bundle exec rails s; else bundle exec rails $1; fi
