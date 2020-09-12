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

# rust env
set -gx PATH $PATH $HOME/.cargo/bin

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

# cmake alias
alias cmake="cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"

#default fish keybinds
fish_default_key_bindings

set -x STARSHIP_CONFIG ~/.config/fish/starship.toml
starship init fish | source
