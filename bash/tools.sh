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

function mkp {
    LENGTH=$1
    STR=$(head /dev/urandom | sha256sum | sha256sum)
    echo ${STR:0:$LENGTH}
}


# https://gist.github.com/mafintosh/405048d304fbabb830b2
#function npm () {
#  if [ "$1" = "publish" ]; then
#    dependency-check . &&  $(which npm) "$*"
#  else
#    $(which npm) "$*"
#  fi
#}
