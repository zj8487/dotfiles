### misc unix stuff
alias bc='bc <(echo scale=10)'
alias grep='grep --color=auto'

### node aliases
alias getnpm='curl https://npmjs.org/install.sh | sh'
alias naux='ps aux | grep node'
alias b='node-gyp build'
alias bb='node-gyp rebuild'
alias n='node'
alias ng='node-gyp'
alias t='npm test'
alias we='weinre --boundHost=-all-'

### git aliases
alias gd='git diff'
alias gds='git diff --staged'
alias gg='git grep -n -C1'
alias gl='git lg'
alias glp='git lg -p'
alias grm='git reset --hard upstream/master'
alias gs='git st'
alias gf='git fetch --all'
alias gp='git push'
alias gr='git remote'

### make stuff
alias m='make -j $NUMBER_OF_PROCESSORS'

### network stuff
alias myip='curl icanhazip.com'
alias ddc='sudo ddclient -daemon=0 -debug -verbose -noquiet -force'
alias wi='sudo /home/lms/local/bin/node /home/lms/local/bin/wit'
alias tor='~/tor-browser_en-US/start-tor-browser &> /dev/null &'

### ls stuff
alias l='ls -ltrha'
alias ll='ls -lha'
alias ls='ls --color=auto'

### crypto
alias bitcoind='~/src/bitcoin/src/bitcoind'
#alias bitcoind='~/src/bitcoin/src/bitcoind -testnet -rpcuser=foo -rpcpassword=bar -rpcport=12345'
alias litecoind='~/src/litecoin/src/litecoind'
alias cms='PORT=8080 npm start'
#alias create-cert='openssl req -x509 -nodes -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365'
alias duf='du -h --max-depth=1 | sort -n -r'
alias ff='firefox &> /dev/null &'
alias ift='sudo iftop -i wlan0 -B -P'
alias gc='google-chrome &> /dev/null &'

### os specific stuff
alias sc='synclient TapButton1=1 TapButton2=2 TapButton3=3'
alias sshot='gnome-screenshot -a'

### work related stuff
alias startrm='liveswap -s ~/src/micnews/release-manager/index.js -f 1 -a 0.0.0.0 --pre-upgrade ~/src/micnews/release-manager/pre-upgrade.js'
alias var='sudo varnishd -f /home/lms/src/varnish-test/default.vcl -S /home/lms/src/varnish-test/secret -s malloc,1G -T 127.0.0.1:2000 -a 0.0.0.0:8888'
