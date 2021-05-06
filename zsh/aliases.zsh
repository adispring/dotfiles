alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command
alias clls='clear && ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -lah'
alias v='vim'
alias grep="grep --color=auto"

# adi's alias
alias gpo='git push origin'
alias groot='cd $(git rev-parse --show-toplevel)'
alias dirhide='defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder'
alias dirshow='defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder'
alias thrift_parser="node ~/JavaScript/Github/thrift-parser/bin/thrift-parser.js"

# remap terminal tools with customized arguments
# alias emacs="emacs -nw"
alias ag='ag --path-to-ignore ~/.agignore'

alias git-init="git init && echo 'node_modules' >> .gitignore && git add ."


