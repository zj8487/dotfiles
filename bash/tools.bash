#!/bin/bash

#function shasum {
#    cat $1 | sha256sum | cut -d' ' -f1
#}

#function publish_skynet_protocol {
#    TARGET=`shasum $1`
#    cp $1 ~/.skynet/protocols/$TARGET
#    cp $1 ~/src/p2proto/protocols/$TARGET
#}

#function publish_skynet_object {
#    TARGET=`shasum $1`
#    cp $1 ~/.skynet/objects/public/$TARGET
#}

function update-leveldb {
    pushd .
    cd ~/src/node-leveldown && git pull && node-gyp rebuild
    cd ~/src/node-levelup && git pull
    popd
}

function rebuildbitcoind {
    pushd ~/src/bitcoin/src
    make -f makefile.unix clean
    make -j $NUMBER_OF_PROCESSORS -f makefile.unix USE_UPNP=-
    popd
}

function md {
    morkdown -w "$1" &> /dev/null &
}

function mkstatic {
    if [ ! -z "$1" ]; then
#        echo "fuck yes"
        mkdir -p "$1"
        # TODO fix base module
        cp -r ~/src/static-base/* "$1"
        # TODO use sed to replace port numbers with "$2" ..
        cd "$1"
        pkginit build static
        cat package.json
#        ~/src/youtube-dl/youtube-dl -f18 -t "$1"
    else
        echo "missing module parameter!"
    fi
}

function update-fasttrack {
    cd ~/src
    tar xzfv ~/Dropbox/indentive/fasttrack.tar.gz
    cd -
}

function backup-fasttrack {
    cd ~/src
    tar czfv ~/Dropbox/indentive/fasttrack.tar.gz fasttrack
    cd -
}
