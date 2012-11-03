alias ac='. ~/env/bin/activate && cd ~/src/braian/'
alias ack='ack-grep'
alias bankid='cat /media/usb-stick/passwords/bank-id | xclip'
alias cd..='cd ..'
alias cd-='cd -'
alias chr='google-chrome --js-flags="--trace-opt --trace-bailout --trace-deopt --prof"'
alias duf='du --max-depth=1 | sort -n -r'
alias getnpm='curl http://npmjs.org/install.sh | sh'
alias igrep='grep -i'
alias l="ls -ltrha"
alias ls="ls --color=auto"
alias m="make -j $NUMBER_OF_PROCESSORS"
alias o="gnome-open"
alias rlocate='locate --regex'
alias sr='pserve development.ini --reload'
alias srp='ac && cd braian/portal && sr'
alias todo='e ~/Dropbox/work/TODO.txt'
alias ve='virtualenv --no-site-packages '
alias xpc='xclip -o -selection clipboard'
alias xpp='xclip -o -selection primary'
alias xps='xclip -o -selection secondary'
alias xyc='xclip -i -selection clipboard'
alias xyp='xclip -i -selection primary'
alias xys='xclip -i -selection secondary'
