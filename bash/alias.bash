alias ac='. ~/env/bin/activate && cd ~/src/braian/'
alias ack='ack-grep'
alias bankid='cat /media/usb-stick/passwords/bank-id | xclip'
alias bc='bc <(echo scale=10)'
alias cd..='cd ..'
alias cd-='cd -'
alias chr='google-chrome --js-flags="--trace-opt --trace-bailout --trace-deopt --prof"'
alias duf='du --max-depth=1 | sort -n -r'
alias getnpm='curl https://npmjs.org/install.sh | sh'
alias gd='git diff'
alias gg='git grep'
alias gl='git lg'
alias glp='git lg -p'
alias igrep='grep -i'
alias l="ls -ltrha"
alias ll="ls -lha"
alias ls="ls --color=auto"
alias m="make -j $NUMBER_OF_PROCESSORS"
alias n="node"
alias myip="curl http://whatismyip.nodejitsu.com/index.json"
alias pi='nave use 0.8.19 pkginit'
alias rlocate='locate --regex'
alias sr='pserve development.ini --reload'
alias srp='ac && cd braian/portal && sr'
alias todo='e ~/Dropbox/TODO.txt'
alias t='npm test'
alias tt="wr 'npm test' *.js test/*.js"
alias ve='virtualenv --no-site-packages '
alias xpc='xclip -o -selection clipboard'
alias xpp='xclip -o -selection primary'
alias xps='xclip -o -selection secondary'
alias xyc='xclip -i -selection clipboard'
alias xyp='xclip -i -selection primary'
alias xys='xclip -i -selection secondary'
