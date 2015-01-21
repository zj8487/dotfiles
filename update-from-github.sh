#!/bin/bash

mkdir -p ~/src/leveldb-repos

source ~/dotfiles/bash/clone.sh

cd ~/src

clone_remote awesome awesomeWM
clone_remote blessed chjj
clone_remote contextify brianmcd
clone_remote jsdom tmpvar
clone_remote jsonld.js digitalbazaar

cd ~/src/leveldb-repos

clone_remote node-levelup rvagg
clone_remote node-leveldown rvagg
clone_remote abstract-leveldown rvagg
clone_remote levelgraph mcollina
clone_remote levelgraph-jsonld mcollina
clone_remote level level
clone_remote level-packager level
clone_remote deferred-leveldown level
clone_remote level-ws level

