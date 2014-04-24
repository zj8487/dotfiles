#!/bin/bash

function shasum {
    cat $1 | sha256sum | cut -d' ' -f1
}

function md {
    morkdown -w "$1" &> /dev/null &
}
