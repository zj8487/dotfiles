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

function runbitcoind {
    ~/src/bitcoin/src/bitcoind -testnet -debug -logtimestamps -printtoconsole -rpcuser=foo -rpcpassword=bar -rpcport=12345
}

function runbitcoind-gen {
    ~/src/bitcoin/src/bitcoind -gen -testnet -debug -logtimestamps -printtoconsole -rpcuser=foo -rpcpassword=bar -rpcport=12345
}

function rebuildbitcoind {
    pushd ~/src/bitcoin/src
    make -f makefile.unix clean
    make -j $NUMBER_OF_PROCESSORS -f makefile.unix USE_UPNP=-
    popd
}
