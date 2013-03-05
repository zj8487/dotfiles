#!/bin/bash

function publish_skynet_protocol {
    TARGET=`cat $1 | sha256sum | cut -d' ' -f1`
    cp $1 ~/.skynet/protocols/$TARGET
    cp $1 ~/src/p2proto/protocols/$TARGET
}
