#!/usr/bin/env bash

# hide a file by inserting a '.' in front of its name
# if a file is already hidden, do nothing
hide() {
    for f in "$@"; do
        if [[ ! ${f::1} == '.' ]]; then
            mv "$f" ".$f"
        fi
    done
}

# make directory and cd into it
mkcd() {
  mkdir -p $1; cd $1
}

# compress files
targz() {
  tar -zcvf $1.tar.gz "${@:2}"
}

# uncompress files
untargz() {
  tar -zxvf $1
}

# find the ip address
myip() {
    curl ifconfig.io
}

# swap the name of two files
swapfiles() {
  tmp=$RANDOM
  name=$1
  mv $2 $tmp
  mv $1 $2
  mv $tmp $name
}
