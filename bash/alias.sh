alias aux='ps aux | grep node'
alias b='./build > log 2>&1'
alias bitcoind='~/src/bitcoin/src/bitcoind'
alias bc='bc <(echo scale=10)'
alias cms='PORT=8080 npm start'
#alias create-cert='openssl req -x509 -nodes -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365'
alias duf='du -h --max-depth=1 | sort -n -r'
alias ff='firefox &> /dev/null &'
alias ift='sudo iftop -i wlan0 -B -P'
alias getnpm='curl https://npmjs.org/install.sh | sh'
alias gc='chromium-browser &> /dev/null &'
alias gd='git diff'
alias gg='git grep -n -C1'
alias gl='git lg'
alias glp='git lg -p'
alias grm='git reset --hard upstream/master'
alias gs='git st'
alias gf='git fetch --all'
alias grep='grep --color=auto'
alias l="ls -ltrha"
alias litecoind='~/src/litecoin/src/litecoind'
alias lc='for f in *; do b=$(echo "$f" | tr '[A-Z]' '[a-z]'); mv "$f" "$b"; done'
alias ll="ls -lha"
alias ls="ls --color=auto"
alias m="make -j $NUMBER_OF_PROCESSORS"
alias n="node"
alias ng="node-gyp"
alias myip="curl icanhazip.com"
#alias rlocate='locate --regex'
#alias reload-static='pkginit rm static && pkginit add static ~/dotfiles/node/static.json'
#alias bitcoind='~/src/bitcoin/src/bitcoind -testnet -rpcuser=foo -rpcpassword=bar -rpcport=12345'
alias sc='synclient TapButton1=1 TapButton2=2 TapButton3=3'
alias sshot='gnome-screenshot -a'
alias tor='~/tor-browser_en-US/start-tor-browser &> /dev/null &'
alias t='npm test'
alias we='weinre --boundHost=-all-'
alias wi='sudo /home/lms/local/bin/node /home/lms/local/bin/wit'
alias ddc='sudo ddclient -daemon=0 -debug -verbose -noquiet -force'
alias startrm='liveswap -s ~/src/micnews/release-manager/index.js -f 1 -a 0.0.0.0 --pre-upgrade ~/src/micnews/release-manager/pre-upgrade.js'
alias var='sudo varnishd -f /home/lms/src/varnish-test/default.vcl -S /home/lms/src/varnish-test/secret -s malloc,1G -T 127.0.0.1:2000 -a 0.0.0.0:8888'
#alias xpc='xclip -o -selection clipboard'
#alias xpp='xclip -o -selection primary'
#alias xps='xclip -o -selection secondary'
#alias xyc='xclip -i -selection clipboard'
#alias xyp='xclip -i -selection primary'
#alias xys='xclip -i -selection secondary'
#alias zzz='sudo pm-suspend'
