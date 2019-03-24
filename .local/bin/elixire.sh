#!/bin/bash
CONFIG=$HOME/.config/elixire.sh
if [ -f $CONFIG ]; then
   source $CONFIG
else
   echo "Config does not exist!" >&2
fi

if [ -z "$elixtoken" ]; then
    echo "No token given! Bailing out..." >&2
    exit 1
fi

if [ -z "$elixend" ]; then
    export elixend="https://elixi.re/api/upload"
fi

for file in "$@"
do
    export mimetype=`file --mime-type -b "$file"`
    echo "Uploading $file... ($mimetype)" >&2
    curl -vv -H "Authorization: $elixtoken" -F "f=@$file;type=$mimetype" $elixend
done
