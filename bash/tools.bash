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
