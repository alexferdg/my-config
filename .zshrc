# Brew native ARM installed binaries
export PATH="/opt/homebrew/bin:$PATH"

# shell appearance
PS1="%F{57}%n%f@%F{118}%m%f %F{226}%1~%f %#"
export CLICOLOR=1
export LSCOLORS=GXFXCXDXBXEGEDABAGACED

# Default editor
bindkey -e
export EDITOR=vim

# Language Environment Variables
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# General aliases
alias ls="ls -G"
alias grep="grep --color=always"
alias rm="rm -i"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/alex/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/alex/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/alex/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/alex/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# jenv initialize
eval "$(jenv init -)"

echo "Hello from the shell!!"
