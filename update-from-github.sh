#!/bin/bash

mkdir -p ~/src/leveldb-repos

source ~/dotfiles/bash/clone.sh

cd ~/src

clone wit substack
clone awesome awesomeWM
clone omxplayer popcornmix
clone blessed chjj
clone contextify brianmcd
clone jsdom tmpvar
clone jsonld.js digitalbazaar

cd ~/src/leveldb-repos

clone node-levelup rvagg
clone node-leveldown rvagg
clone abstract-leveldown rvagg
clone levelgraph mcollina
clone levelgraph-jsonld mcollina
clone level level
clone level-packager level
clone deferred-leveldown level
clone level-ws level

