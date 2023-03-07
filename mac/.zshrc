listening() {
    if [ $# -eq 0 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P
    elif [ $# -eq 1 ]; then
        sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
    else
        echo "Usage: listening [pattern]"
    fi
}
export PATH="/usr/local/opt/node@16/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/huynhs/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/huynhs/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/huynhs/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/huynhs/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export GITLAB_RW_REGISTRY_USER=n...
export GITLAB_RW_REGISTRY_TOKEN=glpat-...

alias k='kubectl'

# rust
source "$HOME/.cargo/env"