#!/bin/bash

function shasum {
    cat $1 | sha256sum | cut -d' ' -f1
}

function publish_skynet_protocol {
    TARGET=`shasum $1`
    cp $1 ~/.skynet/protocols/$TARGET
    cp $1 ~/src/p2proto/protocols/$TARGET
}

function publish_skynet_object {
    TARGET=`shasum $1`
    cp $1 ~/.skynet/objects/public/$TARGET
}

function update_leveldb {
    cd ~/src/node-leveldown && git pull && node-gyp rebuild
    cd ~/src/node-levelup && git pull
}

function run-bitcoin {
    ~/src/bitcoin/src/bitcoind -testnet -debug -logtimestamps -daemon
}

function kill-bitcoin {
    pkill bitcoind
}
