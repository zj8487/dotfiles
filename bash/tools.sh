function shasum {
    cat $1 | sha256sum | cut -d' ' -f1
}

function md {
    morkdown -w "$1" &> /dev/null &
}

function prepend_to_path {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        PATH=$1:$PATH
    fi
}

function append_to_path {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        PATH=$PATH:$1
    fi
}

