set -gx LC_ALL en_US.UTF-8
set -gx EDITOR "vim"
set -x TERM "xterm-256color"

# go env
set -gx GOROOT $HOME/Workspace/golang/root/go1.13.7
set -gx GOBIN $HOME/Workspace/golang/bin
set -gx GOPATH $HOME/Workspace/golang/path
set -gx PATH $PATH $GOROOT/bin $GOPATH $GOBIN
set -gx GO111MODULE on
set -gx GOSUMDB off
set -gx CGO_ENABLED 0
set -gx GOPROXY "https://goproxy.cn"

# go alias
alias lgo="env GOOS=linux GOARCH=amd64 go"
alias gta="go test (go list ./... | grep -v /vendor/)"

# emacs alias
alias e='emacsclient -nw'
alias ec='emacsclient -t -q -a ""'

# git alias
alias gco="git checkout"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gcb="git checkout -b"
alias gpm="git pull origin master"
alias gpd="git pull origin develop"
alias gpa="git pull --all"
alias gba="git branch -a"
alias gbd="git branch -D"
alias gfp="git fetch -p"
alias gst="git status"
alias gcl="git config --local user.name 'Kevin Leung'; git config --local user.email 'kevin.scnu@gmail.com'"
alias grc="git rebase --continue"
alias grm="git rebase -i master"

# fish alias
alias fishconfig="vim $HOME/.config/fish/config.fish"
alias rm="rmtrash"

#default fish keybinds
fish_default_key_bindings

#omf install spacefish
set SPACEFISH_DIR_TRUNC 4
set SPACEFISH_DIR_TRUNC_REPO false
set SPACEFISH_EXIT_CODE_SHOW true
set SPACEFISH_EXIT_CODE_SYMBOL "✘ "
set SPACEFISH_EXEC_TIME_ELAPSED 1
set SPACEFISH_JOBS_AMOUNT_THRESHOLD 0
set SPACEFISH_VI_MODE_INSERT "❯"
set SPACEFISH_VI_MODE_NORMAL "❮"
set SPACEFISH_VI_MODE_VISUAL "V"
set SPACEFISH_VI_MODE_REPLACE_ONE "^"
set SPACEFISH_PROMPT_ORDER user host dir vi_mode char
set SPACEFISH_RPROMPT_ORDER git jobs aws exec_time exit_code
set SPACEFISH_PROMPT_PREFIXES_SHOW false
set SPACEFISH_PROMPT_ADD_NEWLINE false
set SPACEFISH_PROMPT_SEPARATE_LINE false
set SPACEFISH_TIME_SHOW true
set ASK_DEFAULT_DEVICE_LOCALE "en-US"
