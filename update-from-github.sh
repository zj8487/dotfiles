#!/bin/bash

set -e

mkdir -p ~/src/leveldb-repos

source ~/dotfiles/bash/clone.sh

cd ~/src

clone prohub hij1nx
clone multilevel juliangruber
clone level-manifest dominictarr
clone level-live-stream dominictarr
clone levelweb hij1nx
clone pull-stream dominictarr
clone torrent-docker mafintosh
clone hyperlog mafintosh
clone level-temp mafintosh
clone open-ath9k-htc-firmware qca
clone scripts.irssi.org irssi
clone zeal zealdocs
clone send pillarjs
clone deploy tj
clone stack tj
clone serve tj
clone io.js iojs
clone morkdown rvagg
clone levelmeup rvagg
clone learnyounode rvagg
clone workshopper rvagg
clone node-revisit-token revisitors
clone pyg indutny
clone wit substack
clone awesome awesomeWM
clone omxplayer popcornmix
clone blessed chjj
clone contextify brianmcd
clone jsdom tmpvar
clone jsonld.js digitalbazaar
clone cloneall micnews

cd ~/src/leveldb-repos

clone node-levelup rvagg
clone node-leveldown rvagg
clone node-level-ttl rvagg
clone abstract-leveldown rvagg
clone levelgraph mcollina
clone levelgraph-jsonld mcollina
clone level level
clone level-packager level
clone deferred-leveldown level
clone level-ws level

