alias ack='ack-grep'
alias bd='~/src/bitcoin/src/bitcoind'
alias bc='bc <(echo scale=10)'
#alias create-cert='openssl req -x509 -nodes -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365'
alias duf='du -h --max-depth=1 | sort -n -r'
alias ff='firefox &> /dev/null &'
alias ift='sudo iftop -i wlan0 -B -P'
alias getnpm='curl https://npmjs.org/install.sh | sh'
alias gc='chromium &> /dev/null &'
alias ga='git add'
alias gd='git diff'
alias gg='git grep -n -C1'
alias gl='git lg'
alias glp='git lg -p'
alias gs='git st'
alias l="ls -ltrha"
alias lc='for f in *; do b=$(echo "$f" | tr '[A-Z]' '[a-z]'); mv "$f" "$b"; done'
alias ll="ls -lha"
alias ls="ls --color=auto"
alias m="make -j $NUMBER_OF_PROCESSORS"
alias n="node"
alias myip="curl icanhazip.com"
#alias rlocate='locate --regex'
#alias reload-static='pkginit rm static && pkginit add static ~/dotfiles/node/static.json'
#alias bitcoind='~/src/bitcoin/src/bitcoind -testnet -rpcuser=foo -rpcpassword=bar -rpcport=12345'
alias sc='synclient TapButton1=1 TapButton2=2 TapButton3=3'
alias sshot='gnome-screenshot -a'
alias tor='~/tor-browser_en-US/start-tor-browser &> /dev/null &'
alias we='weinre --boundHost=-all-'
alias wi='sudo /home/lms/local/bin/node /home/lms/local/bin/wit'

#alias xpc='xclip -o -selection clipboard'
#alias xpp='xclip -o -selection primary'
#alias xps='xclip -o -selection secondary'
#alias xyc='xclip -i -selection clipboard'
#alias xyp='xclip -i -selection primary'
#alias xys='xclip -i -selection secondary'
#alias zzz='sudo pm-suspend'
